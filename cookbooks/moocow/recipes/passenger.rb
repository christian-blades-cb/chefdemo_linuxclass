case node[:platform]
when "ubuntu","debian"
  package "build-essential" do
    action :install
  end
  package "libcurl4-openssl-dev" do
    action :install
  end
when "centos","fedora","redhat"
  moocow_yum_groupinstall "Developer Tools"
end

gem_package "bundler" do
  options "--no-ri --no-rdoc"
end

gem_package "passenger" do
  options "--no-ri --no-rdoc"
end

execute "passenger nginx install" do
  command "passenger-install-nginx-module --auto-download --auto --prefix=/opt/nginx"
  creates "/opt/nginx/sbin/nginx"
end

include_recipe "bluepill"

template "/etc/bluepill/nginx.pill"
