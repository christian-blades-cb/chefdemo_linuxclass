action :install do
  execute "yum groupinstall" do
    command "yum groupinstall '#{new_resource.group}' #{new_resource.options if new_resource.options}"
  end
end

action :uninstall do
  execute "yum groupremove" do
    command "yum groupremove '#{new_resource.group}' #{new_resource.options if new_resource.options}"
  end
end
