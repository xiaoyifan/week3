# Notes for Week 3

**NOTE: If you are on Windows, you need to modify the Gemfile before you begin.**

1. Clone this repo
2. `rake db:setup` (this is the same as `bundle install; rake db:migrate db:seed`)
3. `rails server`

If step 2 fails for you, try `bundle exec rake db:drop db:migrate db:seed`

THEN, ensure your application works:

1. Click on the "Movie Recommendations" list
2. Try adding and deleting items

### Tips

* To generate a Rails app without Turbolinks (like this app), use `rails new myapp --skip-turbolinks`
* When you are building an app that will have user accounts, use the "inside out"
technique: build the core value first, pretending that the user is already logged in.
Then add user functionality afterward.

* FOR NEXT WEEK if you want to code along, get an account with Twilio.com, and begin researching for interesting web services that you'd like to mashup into an application.

* You should be very familiar with your code editor: how to comment/uncomment blocks of code quickly, how to delete and duplicate entire blocks of code, and how to search for text.


### jQuery

- Rails applications include jQuery by default.
- The asset "manifest" files (application.css and application.js) control the order in which asset files are put together.
- Don't forget to wrap any jQuery code inside of a "document ready" handler.
- Files in the `/public` folder are not wrapped by a layout, and therefore don't have access to application assets.
- Browsers cache pages based on URLs, including the querystring parameters.

### AJAX

- Originally an acronym for "Asynchronous Javascript and XML".
- You can use the jQuery function `$.ajax()` to make general-purpose Ajax calls to your server (or anywhere).
- Everything is asynchronous, so Javascript callback functions are key to understanding how to make and receive Ajax calls.
- Check the book for details on the various kinds of callbacks you can implement.

General form of `$.ajax()`:

```
http_request_settings = {
  url: '/resource',
  method: 'GET',
  dataType: 'html',
  success: function(response) {
    window.alert("Success!")
    console.debug(response)
}

$.ajax(http_request_settings)

```
### AJAX in Rails

Rails embraces RESTful HTTP, and this approach pays off bigtime when it comes to Ajax.  Remember that the key idea behind REST is to decouple the resource locators from the methods used to act upon those resources.

My three-step recipe:

- Add `remote: true` in the "options hash" of the `link_to`, `form_tag`, or `form_for` method.
- Add a `respond_to` block in your controller action
- (Maybe) Add a `*.js.erb` view template.


## Reminder

If any line of code we've written is unclear, please find a classmate or reach out to Ben as soon as possible.  Ben can meet you on campus or online, and is happy to work with everyone!  
