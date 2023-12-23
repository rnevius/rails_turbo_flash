# frozen_string_literal: true

module RailsTurboFlash
  class ApplicationMailer < ActionMailer::Base
    default from: 'from@example.com'
    layout 'mailer'
  end
end
