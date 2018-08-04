# Rails 5.1 Ahoy Remote Database

Demo app that showcases use Ahoy gem with remote MySQL database on Rails 5.1.
Simple one page with charts of statistics.

## Table of Contents
 - [Getting Started](#getting-started)
 - [File Structure](#file-structure)
 - [Build with versions](#build-with-versions)

## Getting Started

* Clone this repository: `git clone https://github.com/appwebhouse/Ahoy-Remote-Database.git`.
* Run `cd Ahoy-Remote-Database`
* Run `cp .env_example .env` to fill envs.
* Run `bundle install`
* Run `bundle exec rake db:create`
* Run `bundle exec rake db:migrate`
* Visit `localhost:3000`

## File Structure

```
Ahoy-Remote-Database/
├── .github/                            * GitHub files
│
├── app/
│    │
│    ├── models/
│    │    └── ahoy/
│    │         ├── event.rb             * Ahoy::Event model with remote connection
│    │         └── visit.rb             * Ahoy::Visit model with remote connection
│    │
│    ├── views/
│    │    ├── pages/
│    │    │    └── index.html           * Statics index page with charts
│    │    │
│    │    └── layouts/
│    │         └── application.html     * Application layout included google charts
│    │
│    ├── controllers/
│    │    └── pages_controller.rb       * PagesController tracking visits
│    │
│    └── config/
│         └── database.yml              * Configuration for remote database
│
├── .env_example                        * Defines envs
├── .gitignore                          * Example git ignore file
├── MIT-LICENSE                         * MIT License
└── README.md                           * This file
```

## Build with versions

```
Rails 5.1.6

Ruby 2.5.1

Ahoy 2.1.0
```
