# PubgRuby

A simple way to get PLAYERUNKNOWNS BATTLEGROUNDS stats via [PUBGTracker's API](https://pubgtracker.com/site-api).

*Note: I'm not affiliated with PUBGTracker in any way.  If you have issues with the Gem, make an issue here.  If you have an issue with the API's response, please contact someone from PUBGTracker.*

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pubg_ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pubg_ruby

Don't forget to `require` this if you're using plain Ruby!

## Setup

You need to include your API key.  If you're using plain Ruby, put this early in your load order.  If you're using Rails, put this in an initializer.

```ruby
PubgRuby.configure do |config|
  config.api_key = 'xxxxxx'
end
```

## Usage

To search by a PUBG player name:

```ruby
PubgRuby::Profile.from_nickname 'nickname'
```

And to search by a Steam ID:

```ruby
PubgRuby::Profile.from_steam 'Steam ID' # Note that this returns the full player information, not a stub like the API itself would return.
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

You'll need to add a few things to a `.env` file.  `API_KEY`, `TEST_NAME`, and `TEST_STEAM_ID` to make the tests pass.  Ensure all tests are passing before making a PR.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kieraneglin/pubg_ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
