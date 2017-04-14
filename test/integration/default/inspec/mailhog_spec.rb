control 'mailhog-1' do
  title 'MailHog Tests'

  # we can also make sure that a port is NOT listening
  describe port(1025) do
    it { should be_listening }
  end

  describe iptables(table: 'nat') do
    it { should have_rule('-A OUTPUT -p tcp -m tcp --dport 25 -j DNAT --to-destination 127.0.0.1:1025') }
  end
end

