require 'test_helper'

module Oluprofile
  class UserSessionsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get new" do
      get user_sessions_new_url
      assert_response :success
    end

    test "should get create" do
      get user_sessions_create_url
      assert_response :success
    end

    test "should get destroy" do
      get user_sessions_destroy_url
      assert_response :success
    end

  end
end
