# frozen_string_literal: true

require 'test_helper'

class CallbacksTest < ActionDispatch::IntegrationTest
  def test_after_action_callback_added
    assert_includes CallbacksController._process_action_callbacks.map(&:filter), :append_flash_to_turbo_stream_response
  end

  def test_turbo_stream_tag_added_if_flash_and_format_turbo_stream
    get callbacks_url(format: :turbo_stream), params: { flash: true }

    assert_includes response.body, 'turbo-stream'
  end

  def test_no_tag_added_if_format_not_turbo_stream
    get callbacks_url, params: { flash: true }

    assert_not_includes response.body, 'turbo-stream'
  end

  def test_no_tag_added_if_no_flash_messages
    get callbacks_url(format: :turbo_stream)

    assert_not_includes response.body, 'turbo-stream'
  end
end
