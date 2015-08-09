name             'legacy'
maintainer       'Legacy Maintainers'
maintainer_email 'obama@whitehouse.gov'
version          "0.1.0"

supports 'centos'

recipe "reporting::default", "Installs and configures legacy"


%w(nfs selinux yum).each do |cb|
  depends cb
end


