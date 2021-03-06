# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

# Get your Account Sid and Auth Token from https://www.twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'

# Initialize Twilio Client
@client = Twilio::REST::Client.new(account_sid, auth_token)

@numbers = @client.account.available_phone_numbers('US').local
                  .list(exclude_all_address_required: 'true')

@number = @numbers[0].phone_number

@client.account.incoming_phone_numbers.create(phone_number: @number)
