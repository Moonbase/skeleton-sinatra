# Moonbase Co. Sinatra skeleton

## Development requirements
The following is required for your development environment:
* Ruby
* Rack: http://rack.github.io
* Bundler: http://bundler.io
* Node
* NPM

## Creating a project

To create a new project from this skeleton, follow these steps:

* `git clone <repository-url>` this repository.
* Change into the new directory.
* Run `./setup.sh`. This will create a 'skeleton' branch and a 'master' branch. The 'skeleton' branch is used to update from the skeleton later on.
* You can remove this section of the readme, the project is now set up.

## Updating from the skeleton

This project was created using the skeleton-sinatra project skeleton. If you want to update this project to the latest changes made to the skeleton, follow these steps:

* Pull remote 'skeleton-sinatra/master' into local branch 'skeleton'.
* Switch to the local branch 'master'.
* Merge the local branch 'skeleton' into 'master'.

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
