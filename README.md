# Zuul::Client

Ruby library wrapping Zuuls HTTP API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zuul-client',  github: "everydayhero/zuul-client"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ bundle install

## Usage

Set these environment variables
```
ZUUL_API_URL=http://zuul.everydayhero.io
ZUUL_AUTHORIZATION_TOKEN=Secrets
```

Call methods statically
```ruby
Zuul::Client.create_layer(layer_id, version, blueprint)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/everydayhero/zuul-client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

