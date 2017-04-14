# don't include this recipe directly

valid_actions = %w(install uninstall)
raise "Invalid setting '#{node['mailhog']['status']}'for node['mailhog']['status']. Valid actions: #{valid_actions}" unless valid_actions.include?(node['mailhog']['status'])

install_mailhog = (node['mailhog']['status'] == 'install')

remote_file node['mailhog']['path'] do
  source "https://github.com/mailhog/MailHog/releases/download/v#{node['mailhog']['version']}/MailHog_linux_amd64"
  mode '0755'
  action :delete unless install_mailhog
end

include_recipe 'iptables'

iptables_rule 'mailhog' do
  action :disable unless install_mailhog
end

systemd_service 'mailhog' do
  name 'mailhog'
  description 'Web and API based SMTP testing'
  after %w( network.target )
  install do
    wanted_by 'multi-user.target'
  end
  service do
    exec_start node['mailhog']['path']
  end
  action [:stop, :disable, :delete] unless install_mailhog
end

service 'mailhog' do
  action [:enable, :start] if install_mailhog
  action [:disable, :stop] unless install_mailhog
end
