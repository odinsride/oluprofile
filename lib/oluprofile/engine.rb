require 'sorcery'

module Oluprofile
  class Engine < ::Rails::Engine
    isolate_namespace Oluprofile

    require 'simple_form'
    require 'rails-ujs'
    require 'jquery-rails'
    require 'jquery-ui-rails'
    require 'materialize-sass'

    config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.fixture_replacement :factory_bot, :dir => 'spec/factories'
    end

  end
end
