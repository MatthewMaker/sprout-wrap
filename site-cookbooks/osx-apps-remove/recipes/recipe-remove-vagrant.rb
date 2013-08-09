#include_recipe "sprout-osx-apps::virtualbox"

#dmg_properties = node['sprout']['vagrant']['dmg']

#dmg_package "Vagrant" do
#  source   dmg_properties['source']
#  checksum dmg_properties['checksum']
#  action :install
#  type "pkg"
#  owner node['current_user']
#  package_id "com.vagrant.vagrant"
#end

#must tell the packaging system to forget this app
execute "sudo pkgutil --forget com.vagrant.vagrant" do
    action :nothing
end

# we *might* need to remove /Applications/Vagrant folder
directory "/Applications/Vagrant" do
    recursive true
      action :delete
end

