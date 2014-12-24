#
# Recipe:: default
#

package "vim-enhanced" do
  action :install
end

node['shell_preferences']['user_files'].each do |_file|
  template File.join(ENV['HOME'],_file) do
    source "#{_file}.erb"
    mode '0644'
    owner node['current_user']
    group 'root'
  end
  template File.join('/etc/skel',_file) do
    source "#{_file}.erb"
    mode '0644'
    owner 'root'
    group 'root'
  end
end

node['shell_preferences']['profile_d_files'].each do |_file|
  template File.join('/etc/profile.d',_file) do
    source "#{_file}.erb"
    mode '0644'
    owner 'root'
    group 'root'
  end
end

