Twilio Voice Transcription Tryout
=====

A simple Rails app that lets you try out Twilio's voice transcription capabilities.


Note on Cost
---

Twilio costs money! Make sure you check the cost of things before using. As of June 2013, the rates are roughly $1/month to reserve a phone number, 1 cent per call per minute, and 5 cents per transcription minute. So using this should only be a few dollars max, BUT I'm not liable for charges! Also note that Twilio saves your recordings (even transcribed ones) and there is a storage fee associated these, so make sure you go in and delete those after you're done.


Deploying on Heroku
---

- Clone the repo
- Create a new Heroku app

`heroku create`

- Push your repo to Heroku

`git push heroku master`

- Migrate the database on your Heroku server

`heroku run rake db:migrate`

- Go onto Twilio, and create a new number (When logged in, click 'Account', then 'Numbers', then the blue 'Buy a Number' button on the top right).

- On the 'Manage Numbers' screen, click on the number you just purchased. Then, in the 'Voice Request URL' field, put the URL for your app (for example, http://myappname.herokuapp.com/) and make sure 'POST' is selected in the dropdown on the right.

- Now you're ready to roll! Call your phone number, leave a message when prompted, hang up, and load up the app URL in your browser. After a few seconds (depending on length) the transcribed message should appear.


