#
# Cookbook Name:: moocow
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory node[:app][:root_dir] do
  recursive true
end

remote_directory node[:app][:root_dir] do
  source "linuxclassapp"
end

package "git" do
  action :install
end

execute "bundle install --deployment" do
  cwd node[:app][:root_dir]
end

template "/opt/nginx/conf/nginx.conf"

bluepill_service "nginx" do
  action [:enable, :load, :start]
end
