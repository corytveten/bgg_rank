# BggRank

This gem displays a list of the current top ten board games according to boardgamegeek.com. It also provides further information on each game, including year of publication, average rating, and the URL of the game's BGG webpage.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bgg_rank'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bgg_rank

## Usage

To run this program in Ruby:
require 'bgg_rank'

Then, in terminal type:
cd bgg_rank
ruby bin/bgg_rank

A list of the current top ten board games will be displayed. The ranking and ratings come from the website Boardgamegeek.com.
Type the number of the game to get more information.
Type exit to exit the program.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'corytveten'/bgg_rank. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BggRank project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'corytveten'/bgg_rank/blob/master/CODE_OF_CONDUCT.md).
