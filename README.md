# ReconnectArRails

Reconnect ActiveRecord connection when Aurora failorver.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'reconnect_ar_rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reconnect_ar_rails

## Usage

```ruby
# config/application.rb
class Application < Rails::Application
  config.middleware.use ReconnectArRails::Disconnector
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/h-nago/reconnect_ar_rails.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
