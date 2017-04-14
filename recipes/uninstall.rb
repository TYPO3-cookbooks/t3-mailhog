=begin
#<
Deactivates MailHog
#>
=end

node.set['mailhog']['status'] = 'uninstall'

include_recipe '::_mailhog'
