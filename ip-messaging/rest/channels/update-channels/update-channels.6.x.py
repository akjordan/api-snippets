# Download the Python helper library from twilio.com/docs/python/install
from twilio.rest import Client

# Initialize the client
account = "ACCOUNT_SID"
token = "AUTH_TOKEN"
client = Client(account, token)

# Update the channel
channel = client.ip_messaging \
                .services("SERVICE_SID") \
                .channels("CHANNEL_SID") \
                .update(friendly_name="NEW_FRIENDLY_NAME")

print(channel.friendly_name)
