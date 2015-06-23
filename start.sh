#! /bin/sh
bundle exec rails s thin -p 3000 &
bundle exec rails s puma -p 3001 &
bundle exec rails s unicorn -p 3002 &
bundle exec rails s webrick -p 3003 &
