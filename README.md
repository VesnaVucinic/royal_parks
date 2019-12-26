# RoyalParks

This is a CLI app about Royal Parks in London. It uses Nokogiri sraping tool to retrieve data from the web site, make new instances of Ruby classes to represent the data and make the data visible to users through an interactive CLI.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'royal_parks'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install royal_parks

## Usage

User is greeted and offered list of Royal Parks (need scraping). User is asked to select park and for choosen park sees park offers. After that user is asked to select another park or exit app.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/VesnaVucinic/royal_parks. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RoyalParks project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/VesnaVucinic/royal_parks/blob/master/CODE_OF_CONDUCT.md).
