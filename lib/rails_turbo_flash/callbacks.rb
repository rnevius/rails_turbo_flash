# frozen_string_literal: true

module RailsTurboFlash
  module Callbacks
    extend ActiveSupport::Concern

    included do
      after_action :append_flash_to_turbo_stream_response
    end

    private

    def append_flash_to_turbo_stream_response
      return unless request.format.turbo_stream? && flash.any?

      flash_partial = RailsTurboFlash.config.flash_partial || 'components/flash_message'
      flash_id = RailsTurboFlash.config.flash_id || 'flash'
      response.write turbo_stream.prepend(flash_id, partial: flash_partial, locals: { flash: })
    end
  end
end
