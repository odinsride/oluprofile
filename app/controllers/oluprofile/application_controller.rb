module Oluprofile
  class ApplicationController < ActionController::Base
    before_action :require_login
    protect_from_forgery with: :exception

    def rails_env
      rails_env = !Rails.env.production? ? Rails.env.upcase : nil
    end

    helper_method :rails_env

    private

      def not_authenticated
        redirect_to login_path, alert: "Please login first"
      end

  end
end