require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

class TwilioText 
  def send_mass(num, name)
    # put your own credentials here
account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
auth_token = '2008ea097713e401a16c54029058da82'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

@client.account.messages.create(
  :from => '+18152642023',
  :to => num,
  :body => "Hey #{name}! I am Tareq texting from unknown place."
)
  end

end
texting = TwilioText.new
texting.send_mass("+16463151012", "Leon")
