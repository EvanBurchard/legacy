#!/bin/bash
set -e

# We're removing the proxies installed by the platform, since it
# currently doesn't work with git.
unset http_proxy HTTP_PROXY https_proxy HTTPS_PROXY

# accept the incoming data
echo "       Receiving app bundle"
mkdir -p /app && tar -xC /app

app_root=/app
build_root=/build/app
cache_root=/cache
buildpack_root=/build/buildpacks

cp -r /app /build

buildpacks=($buildpack_root/*)
selected_buildpack=

mkdir -p $cache_root
mkdir -p $build_root/.apparatuses
mkdir -p $build_root/.profile.d

# This is to get a custom buildpack. Probably should use profile.d though
[[ -f "$app_root/.env" ]] && . "$app_root/.env"

if [ -n "$BUILDPACK_URL" ]; then
  echo "       Fetching custom buildpack"
  buildpack="$buildpack_root/custom"
  rm -rf "$buildpack"
  git clone --depth=1 "$BUILDPACK_URL" "$buildpack"
  selected_buildpack="$buildpack"
  buildpack_name=$($buildpack/bin/detect "$build_root") && selected_buildpack=$buildpack
else
  for buildpack in "${buildpacks[@]}"; do
    buildpack_name=$($buildpack/bin/detect "$build_root") && selected_buildpack=$buildpack && break
  done
fi

if [ -n "$selected_buildpack" ]; then
  echo "       $buildpack_name app detected"
else
  echo "       Unable to select a buildpack"
  exit 1
fi

$selected_buildpack/bin/compile "$build_root" "$cache_root"
$selected_buildpack/bin/release "$app_root" "$cache_root" > /build/app/.release

mkdir -p $build_root/.profile.d
ruby -e "require 'yaml';(YAML.load_file('$build_root/.release')['config_vars'] || {}).each{|k,v| puts \"#{k}=#{v}\"}" > $build_root/.profile.d/config_vars

if ! test -z "$APPARATUSES"; then
  echo "-----> Installing apparatuses ..."
  for APPARATUS in $APPARATUSES; do
    case $APPARATUS in
     *.tgz | *.tar.gz)
       filename=$(basename $APPARATUS)
       name=$(echo $filename|sed s/.tgz//g|sed s/.tar.gz//g)
       curl -s -L -O $APPARATUS
       echo "       Install ($name)"
       mkdir -p "$build_root/.apparatuses/$name"
       tar -C "$build_root/.apparatuses/$name" -zxf $filename
       rm $filename
       ;;
    esac
  done
fi

rm -fR /app
mv /build/app /

# clean up
echo "       Cleaning up caches"
rm -fR "$cache_root" /tmp/pip-build-root
