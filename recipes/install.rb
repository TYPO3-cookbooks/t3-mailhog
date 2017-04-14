=begin
#<
Activates MailHog
#>
=end

node.set['mailhog']['status'] = 'install'

include_recipe '::_mailhog'
