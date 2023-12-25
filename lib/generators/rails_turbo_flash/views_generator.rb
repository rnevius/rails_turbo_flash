require 'rails/generators'

module RailsTurboFlash
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../app/views/turbo_flash', __dir__)

      def install
        if defined?(Haml)
          copy_file('_flash_message.html.haml', 'app/views/turbo_flash/_flash_message.html.haml')
        else
          copy_file('_flash_message.html.erb', 'app/views/turbo_flash/_flash_message.html.erb')
        end
      end
    end
  end
end
