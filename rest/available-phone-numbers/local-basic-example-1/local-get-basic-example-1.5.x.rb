# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

# Get your Account Sid and Auth Token from https://www.twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'

# Initialize Twilio Client
@client = Twilio::REST::Client.new(account_sid, auth_token)

# Retrieve available phone numbers in near specified latitude and longitude
# for the given account sid
@numbers = @client.account.available_phone_numbers('US').local.list(area_code: '510')

@number = @numbers[0].phone_number

@client.account.incoming_phone_numbers.create(phone_number: @number)
