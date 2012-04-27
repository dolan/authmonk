# Authmonk

Mountable rails authentication based on devise. Currently using mongoid.

## Installation

Add this line to your application's Gemfile:

    gem 'authmonk'

And then execute:

    $ bundle

Mount Authmonk engine by edit `config/routes.rb` on your application:

    mount Authmonk::Engine => '/'

Create custom devise initializer, `config/initializers/devise.rb`:

    Devise.setup do |config|
      config.mailer_sender = "accounts@awesomeapp.com"
    end

Optionally, You can also extend `Authmonk::User` for your convenience. say `app/models/user.rb`:

    class User < Authmonk::User
    end

## Participation

FEPR: Fork, Edit, Pull Request!


