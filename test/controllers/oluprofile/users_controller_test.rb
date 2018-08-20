require 'test_helper'

module Oluprofile
  class UsersControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @user = oluprofile_users(:one)
    end

    test "should get index" do
      get users_url
      assert_response :success
    end

    test "should get new" do
      get new_user_url
      assert_response :success
    end

    test "should create user" do
      assert_difference('User.count') do
        post users_url, params: { user: { crypted_password: @user.crypted_password, description: @user.description, email: @user.email, first_name: @user.first_name, last_name: @user.last_name, location: @user.location, phone_number: @user.phone_number, salt: @user.salt } }
      end

      assert_redirected_to user_url(User.last)
    end

    test "should show user" do
      get user_url(@user)
      assert_response :success
    end

    test "should get edit" do
      get edit_user_url(@user)
      assert_response :success
    end

    test "should update user" do
      patch user_url(@user), params: { user: { crypted_password: @user.crypted_password, description: @user.description, email: @user.email, first_name: @user.first_name, last_name: @user.last_name, location: @user.location, phone_number: @user.phone_number, salt: @user.salt } }
      assert_redirected_to user_url(@user)
    end

    test "should destroy user" do
      assert_difference('User.count', -1) do
        delete user_url(@user)
      end

      assert_redirected_to users_url
    end
  end
end
