# README

This is a simple blog web application built with Rails 7. Anonymous users can comment on blog articles, while only registered users can create new articles. User authentication is not handled by a gem like Devise, but a custom SessionsController. Thanks to Steve Polito for writing a great and comprehensive guide on [rails authentication from scratch](https://github.com/stevepolitodesign/rails-authentication-from-scratch).

## Installation
1. Make sure to have Ruby 3.0.3 installed on your machine.
2. Clone this repo.
3. Run `bin/setup` to download and install gems and their dependencies, create the database, run migrations and seed the database with test data.
4. Start the server with `rails s`

## Tests
Run `rails test:system` to run the test suite.

## How to contribute
Don't. This was a coding challenge 😉
