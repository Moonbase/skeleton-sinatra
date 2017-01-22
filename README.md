# Moonbase Co. Sinatra skeleton

## Development requirements

A development environment can be set up using Docker. This will take care of all required software.

## Creating a project

To create a new project from this skeleton, follow these steps:

* `git clone <repository-url>` this repository.
* Change into the new directory.
* Run `./setup.sh`. This will create a 'skeleton' branch and a 'master' branch. The 'skeleton' branch is used to update from the skeleton later on.
* Optionally enable packages. See "Included packages" section.
* You can remove this section of the readme, the project is now set up.

## Included packages

The following packages are included but disabled by default:

* PostgreSQL: Uncomment the required gems in `Gemfile` and the `db` service in `docker-compose.yml`.
* Sentry: Uncomment the required gems in `Gemfile` and the setup script in `config.ru`. Configure `SENTRY_DSN` environment variable.

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

* `docker-compose up`: Start development services.
* `npm run build`: Build static front-end assets.
* `npm run watch`: Start a watcher that builds static front-end assets. This also starts a LiveReload server.
