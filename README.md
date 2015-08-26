
# Sinatra Messages

We're going to be build a simple messaging system using Sinatra. We'll be writing out a `POST` request and handling the data posted to display it in an ERB file.

## Instructions

1. The contents of `bin/post_message.rb` must submit a `POST` request to `localhost:9292`. It should post the to, from, and content variables along with the request. Lookup how to submit POST requests using net/http and how to submit data along with that request.

2. You will have to have 2 terminal windows open: one for the server to be running (via running `rackup`) and one for running the binary `bin/post_message.rb`. Remember to run `ruby bin/post_message.rb`.

3. We want to persist the data collected from the `POST` request, so edit the migration. To migrate to the database, check out the `Rakefile` which defines some helpful tasks.

4. Build out the post '/' route in `app.rb` to take the incoming data and create a message that persists to the database.

5. Edit `views/messages.erb` to iterate through all the `@messages` and display the data.

6. When you visit the `'/'` route via the get request, you should see your message!

There are no tests. Just make it work.

