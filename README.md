# Introduction

This is the template application that I use for all my new Rails projects. In a nutshell, it uses HAML, SCSS, Coffeescript, Twitter Bootstrap, jQuery, Rspec, Capybara, FactoryGirl, Spork, Guard, Simple_Form, Postgresql, Unicorn. It also minimizes the amount of extra files that are created by generators.

# Features

## Front End:

  * HAML for view templates
  * SCSS for dynamic CSS stylesheets
  * CoffeeScript as a replacement for Javascript
  * Twitter Bootstrap using the Bootstrap-Sass gem
  * jQuery
  * Simple Form for cleaner form markup

## Back End
  * PostgreSql
  * Unicorn
      * To start the server in dev mode, type `unicorn_rails -p PORT`

## Testing

  * Rspec
  * Capybara for Request / Integration tests
  * Guard for running tests automatically when files change
  * Spork for running tests faster
  * FactoryGirl for generating Factories instead of Fixtures
  * Database Cleaner for resetting the database between test runs
  * Launchy for debugging Request specs
      * In a request spec, add `save_and_open_page`. This will cause it to save the HTML and open it in your browser so you can debug.

## Notes

### How to Write & Run Tests

Coming Soon...

### Javascript Organization

Coming Soon...
