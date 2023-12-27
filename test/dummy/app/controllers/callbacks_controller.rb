# frozen_string_literal: true

class CallbacksController < ApplicationController
  include RailsTurboFlash::Callbacks

  def index
    flash.now[:notice] = 'Notice' if params[:flash].present?
  end
end
