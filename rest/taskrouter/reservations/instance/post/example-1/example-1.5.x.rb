# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

# Get your Account Sid and Auth Token from https://www.twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
workspace_sid = 'WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
task_sid = 'WTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
reservation_sid = 'WRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'

client = Twilio::REST::Client.new(account_sid, auth_token)

reservation = client.taskrouter.v1.workspaces(workspace_sid)
  .tasks(task_sid).reservations(reservation_sid)

reservation = reservation.update(reservation_status: 'accepted')

puts reservation.reservation_status

puts reservation.worker_name
