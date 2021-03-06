![](https://img.shields.io/badge/Microverse-blueviolet)

# Rail Blog App

> Blog website made with Ruby on Rails.


## Built With

- Ruby on Rails

## Getting Started

### Prerequisites

You need to have ruby installed in your machine.

### Setup

Clone this repo and enter the directory.

```sh
git clone "https://github.com/piero-vic/blog-app" && cd blog-app
```

### Install

Run the following command to install all the dependencies.

```sh
bundler install
```

### Setup TailwindCSS

This project is styled with TailwindCSS. Run the following command to start the
build process.

```
./bin/dev
```

### Usage

Run the following command to start the server, then go to http://localhost:3000

```sh
rails s
```

### Run tests

```sh
bundle exec rspec               # Run all the tests
bundle exec rspec spec/models   # Run tests for models
```

#### Integration tests

To run the integrations tests, you need to seed the database. Run the following
commands.

```
rails db:setup RAILS_ENV=test
bundle exec rspec spec/features   # Run integration tests
```

## Author

👤 **Piero Lescano**

- GitHub: [@piero-vic](https://github.com/piero-vic)
- Twitter: [@v1ccenzo](https://twitter.com/v1ccenzo)
- LinkedIn: [piero-lescano](https://linkedin.com/in/piero-lescano)

## Show your support

Give a ⭐️ if you like this project!
