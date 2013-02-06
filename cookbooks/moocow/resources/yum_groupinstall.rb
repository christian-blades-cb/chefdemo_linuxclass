actions :install, :uninstall
default_action :install

attribute :group, :kind_of => String, :name_attribute => true
attribute :options, :kind_of => String
