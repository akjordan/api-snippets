// Download the Node helper library from twilio.com/docs/node/install
// These are your accountSid and authToken from https://www.twilio.com/console
const accountSid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX';
const authToken = 'your_auth_token';
const params = {
  startDate: '2015-04-01T00:00:00Z',
  endDate: '2015-04-30T23:59:59Z',
  logLevel: 'warning',
};

const client = require('twilio')(accountSid, authToken);

client.monitor.v1.alerts.list(params)
  .then((alerts) => alerts.forEach((alert) => console.log(alert.alertText)));
