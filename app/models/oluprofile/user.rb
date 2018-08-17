module Oluprofile
  class User < ApplicationRecord
    authenticates_with_sorcery!
  end
end
