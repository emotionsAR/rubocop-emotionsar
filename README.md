# Rubocop::Emotionsar

emotionsAR styleguide for Ruby on Rails projects

## Installation

Add this line to your application's Gemfile:

```ruby
group :development, :test do
  gem 'rubocop-emotionsar'
end
```

And then run
```shell
$ bundle install
```

## Usage

Create a `.rubocop.yml` file and include the following directives at the top of it:
```yml
inherit_gem:
  rubocop-emotionsar: style.yml
```

Also the target ruby and rails versions should be specifier per each project:
```yml
AllCops:
  TargetRubyVersion: 2.4   # default as per rubocop:0.81.0
  TargetRailsVersions: 5.0 # default as per rubocop-rails:2.5.2
```

And run:
```shell
bundle exec rubocop
```

Rubocop does not need to be installed in your dependencies, `rubocop-emotionsar` already includes a specific `rubocop` version in its dependencies.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
