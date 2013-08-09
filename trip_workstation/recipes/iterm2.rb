unless File.exists?("/Applications/iTerm.app")
  include_recipe 'pivotal_workstation::iterm2'

  begin
    t = resources(:cookbook_file => "#{node['sprout']['home']}/Library/Preferences/com.googlecode.iterm2.plist")
    t.cookbook "sambao21_workstation"
  end
end
