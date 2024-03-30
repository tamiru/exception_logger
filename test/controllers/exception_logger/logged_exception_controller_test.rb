require "test_helper"

module ExceptionLogger
  class LoggedExceptionControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get logged_exception_index_url
      assert_response :success
    end

    test "should get show" do
      get logged_exception_show_url
      assert_response :success
    end
  end
end
