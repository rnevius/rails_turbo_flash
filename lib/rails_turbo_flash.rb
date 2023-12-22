require 'rails_turbo_flash/callbacks'
require "rails_turbo_flash/version"
require "rails_turbo_flash/engine"

module RailsTurboFlash
  class << self
    attr_accessor :config
  end

  def self.configure
    self.config ||= Configuration.new
    yield(config)
  end

  class Configuration
    attr_accessor :action, :target

    def initialize
      @action = :prepend
      @target = 'turbo-flash'
    end
  end
end
