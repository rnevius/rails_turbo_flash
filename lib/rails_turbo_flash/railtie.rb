# frozen_string_literal: true

require 'rails_turbo_flash/view_helpers'

module RailsTurboFlash
  class Railtie < Rails::Railtie
    initializer 'rails_turbo_flash.view_helpers' do
      ActiveSupport.on_load(:action_view) do
        include RailsTurboFlash::ViewHelpers
      end
    end
  end
end
