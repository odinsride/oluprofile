module Oluprofile
  class Skill < ApplicationRecord
    belongs_to :user

    validates :name, uniqueness: true, presence: true
    validates :first_used, presence: true, length: { minimum: 4, maximum: 4 }
    validates :last_used, presence: true, length: { minimum: 4, maximum: 4}
    validates :proficiency, presence: true, length: { minimum: 1, maximum: 1 }
    validates_inclusion_of :proficiency, in: 1..5
  end
end
