package 'vim-enhanced'
package 'nano'
package 'emacs'

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

package 'ntp' do
  action :install
end

node['ipaddress']
node['memory']['total']

template '/etc/motd' do
  source 'motd.erb'
  action :create
end

service 'ntpd' do
  action [ :enable, :start ]
end
