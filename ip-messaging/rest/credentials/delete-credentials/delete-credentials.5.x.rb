require 'http'
require 'twilio-ruby'

# Get your Account Sid and Auth Token from https://www.twilio.com/console
account_sid = 'ACCOUNT_SID'
auth_token = 'AUTH_TOKEN'
@client = Twilio::REST::Client.new(account_sid, auth_token)

# Delete the credential
credentials = @client.ip_messaging.v1.credentials('SID').fetch
response = credentials.delete
puts response
