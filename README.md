# Capistrano::Rails::Dotenv

Upload dotenv's .env file to your remote server with Capistrano 3.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem 'capistrano-rails-dotenv'
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-rails-dotenv

## Usage

Require it in your Capfile:

```ruby
require 'capistrano/rails/dotenv'
```

Add your ```.env``` file path to your deploy file, like this：

```ruby
set :env_file, 'config/deploy/.env.production'
```
The default path is ```config/deploy/.env.<staging>``` if it is not set.

## License

MIT

