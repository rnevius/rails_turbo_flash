# frozen_string_literal: true

module RailsTurboFlash
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
