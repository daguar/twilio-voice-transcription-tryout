Twilio Voice Transcription Tryout
=====

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

- Now you're ready to roll! Call your phone number, leave a message when prompted, and load up the app URL in your browser. After a few seconds (depending on length) the transcribed message should appear.


