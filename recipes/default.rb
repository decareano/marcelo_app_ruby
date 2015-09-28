#
# Cookbook Name:: marcelo_app_ruby
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
application '/srv/myapp' do
  git 'https://github.com/example/myapp.git'
  bundle_install do
    deployment true
    without %w{development test}
  end
  rails do
    database 'sqlite3:///db.sqlite3'
    secret_token 'd78fe08df56c9'
    migrate true
  end
  unicorn do
    port 8000
  end
end