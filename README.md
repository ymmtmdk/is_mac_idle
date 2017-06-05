# IsMacIdle

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'is_mac_idle', :github => 'ymmtmdk/is_mac_idle'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install is_mac_idle

## Usage
```ruby
require "is_mac_idle"

p IsMacIdle::brightness
p IsMacIdle::idle_time
p IsMacIdle::net_traffic
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/is_mac_idle.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

