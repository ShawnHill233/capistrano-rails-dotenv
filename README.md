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

Add your ```.env``` file path to your deploy file:

```ruby
set :env_file, 'config/deploy/.env'
```

Configure automatic upload tasks, add these to your ```deploy.rb```:

```ruby
namespace :deploy do
  after :started, :upload_dotenv
end
```

Then, it will upload .env file while you deploy.

## License

MIT

