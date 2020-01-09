There are the bathroom codes in my building, which rotate daily and are kind of annoying. 

I want to make a Rails app that will do the following

The day's codes visible on the home page of the app
- [x]

Get a Twilio SMS rake task that will mail the SMS codes to a list of phone numbers
- [ ] every day, for each phone number in @numbers = Number.all, where date = today, send code where date_string = today

If you could also make a slack hook that will post the requests in slack, that would be good too
- [ ]

CRUD for the phone numbers (but kind of obfuscate which phone numbers are in the system and don't display it to all users - I thought it would be good if you can delete a number by entering the number exactly)
- [ ]
