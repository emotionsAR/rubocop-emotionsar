# frozen_string_literal: true

require_relative 'lib/rubocop/emotionsar/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-emotionsar'
  spec.version       = Rubocop::Emotionsar::VERSION
  spec.authors       = ['Roger Bagué']
  spec.email         = ['rogerbague@gmail.com']

  spec.summary       = 'emotionsAR styleguide for RoR projects'
  spec.description   = <<-DESC.strip
    Provides basic configuration for rubocop to be used in Ruby on Rails projects.
    It also provides performance, rails, minitest and rake extensions
  DESC
  spec.homepage      = 'https://github.com/emotionsAR/rubocop-emotionsar'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Specification.new('>= 2.4.0') # same as rubocop:0.81.0

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/master/CHANGELOG.md"
  spec.metadata['bug_tracker_uri'] = "#{spec.homepage}/issues"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(/^(test|spec|features)\//) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(/^exe\//) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 0.81.0'
  spec.add_dependency 'rubocop-performance', '~> 1.5'
  spec.add_dependency 'rubocop-rails', '~> 2.5'
  spec.add_dependency 'rubocop-minitest', '~> 0.9.0'
  spec.add_dependency 'rubocop-rake', '~> 0.5.1'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 13.0'
end
