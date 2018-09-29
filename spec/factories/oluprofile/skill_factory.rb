FactoryBot.define do

  factory :op_skill, class: 'Oluprofile::Skill' do
    sequence(:name) { |n| "PL/SQL#{n}" }
    first_used { 2005 }
    last_used { 2018 }
    proficiency { 5 }
    active { true }
    order { 1 }

    association :user, factory: :op_user
  end
  
end
