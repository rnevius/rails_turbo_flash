# frozen_string_literal: true

module RailsTurboFlash
  module ViewHelpers
    def turbo_flash
      content_tag(:div, id: 'turbo-flash')
    end
  end
end
