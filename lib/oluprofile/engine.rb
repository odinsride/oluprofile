require 'sorcery'

module Oluprofile
  class Engine < ::Rails::Engine
    isolate_namespace Oluprofile

    require 'simple_form'
    require 'rails-ujs'
    require 'jquery-rails'
    require 'jquery-ui-rails'
    require 'materialize-sass'

  end
end
