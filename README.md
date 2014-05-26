Phrasing Application Template 
========

This is very basic template to bootstrap development of Rails application
using awesome [Phrasing](https://github.com/infinum/phrasing) gem.
Ideal for simple applications with inline CMS functionality.

### Ruby version

2.1.0

### Configuration

Install gems:

      $ bundle install

Modify config/application.rb and config/intializers/session_store.rb and replace
sample application name such as YourSampleApp to your own.

Copy config/database.yml.example to config/database.yml:

      $ cp config/database.yml.sample config/database.yml

Then, edit config/database.yml to set up database connection.

Create database:

      $ bundle exec rake db:create db:migrate

### How to run the test suite

If it is your first time, running test suite for this app, run this to build db for test:

      $ bundle exec rake db:create RAILS_ENV=test

And then run rspec:

      $ bundle exec rspec
