# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

# Get your Account Sid and Auth Token from https://www.twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
workspace_sid = 'WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'

client = Twilio::REST::Client.new(account_sid, auth_token)

workspace = client.taskrouter.v1.workspaces(workspace_sid)
            .update(friendly_name: 'NewFriendlyName',
                    event_callback_url: 'http://requestb.in/vh9reovh'
)

puts workspace.friendly_name
