# frozen_string_literal: true

require_relative 'lib/rails_turbo_flash/version'

Gem::Specification.new do |spec|
  spec.name        = 'rails_turbo_flash'
  spec.version     = RailsTurboFlash::VERSION
  spec.authors     = ['Ryan Nevius']
  spec.email       = ['ryan@syntarsus.io']
  spec.homepage      = 'https://github.com/rnevius/rails_turbo_flash'
  spec.license       = 'MIT'
  spec.summary       = 'Turbo Stream flash messages for Rails'
  spec.description   = 'Flash message injection for Ruby on Rails TurboStream responses'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.required_ruby_version = '>= 3.1.0'

  spec.add_dependency 'rails', '~> 6.1'
  spec.add_dependency 'turbo-rails', '~> 1.5'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end
end
