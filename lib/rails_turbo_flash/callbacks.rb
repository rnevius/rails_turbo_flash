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

      response.write turbo_stream.public_send(
        RailsTurboFlash.config.action,
        RailsTurboFlash.config.target,
        partial: 'turbo_flash/flash_message',
        locals: { flash: }
      )
    end
  end
end
