# frozen_string_literal: true

require 'rails_turbo_flash/callbacks'
require 'rails_turbo_flash/config'
require 'rails_turbo_flash/version'
require 'rails_turbo_flash/engine'
require 'rails_turbo_flash/railtie' if defined?(Rails)

module RailsTurboFlash
  extend Configurable
end
