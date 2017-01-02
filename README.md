# Moonbase Co. Sinatra skeleton

## Development requirements
The following is required for your development environment:
* Ruby
* Rack: http://rack.github.io
* Bundler: http://bundler.io
* Node
* NPM

## Installation

* `git clone <repository-url>` this repository.
* Change into the new directory.
* `bundle install`
* `npm install`

## Developing
The following commands are available for development:

* `bundle exec rackup`: Start a server.
* `bundle exec dotenv rackup`: Start a server with environment variables from `.env` file.
* `npm run build`: Build static front-end assets.
* `npm run watch`: Start a watcher that builds static front-end assets.

## Environment variables
The following environment variables can optionally be configured:

* `SENTRY_DSN`: The DSN used by the Sentry raven gem for error tracking.
