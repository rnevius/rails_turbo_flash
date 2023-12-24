# frozen_string_literal: true

module RailsTurboFlash
  module ViewHelpers
    # Generates the HTML tag for displaying flash messages using Turbo Streams in Ruby on Rails.
    #
    # @param options [Hash] The options for customizing the HTML tag.
    # @option options [String] :id The ID attribute for the HTML tag.
    #
    # @return [String] The HTML tag for displaying flash messages.
    def turbo_flash_tag(options = nil)
      options ||= {}
      options[:id] = 'turbo-flash'

      tag.div nil, **options
    end
  end
end
