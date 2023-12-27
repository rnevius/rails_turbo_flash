# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsTurboFlash::Engine => '/rails_turbo_flash'

  resources :callbacks
end
