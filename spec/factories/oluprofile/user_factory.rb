FactoryBot.define do 

  factory :op_user, class: 'Oluprofile::User' do
    sequence(:first_name) { |n| "John#{n}" }
    sequence(:last_name) { |n| "Doe#{n}" }
    sequence(:email) { |n| "john@gmail.com#{n}" }
    sequence(:password) { |n| "topsecret#{n}" }
    password_confirmation { password }
    sequence(:description) { |n| "Developer#{n}" }
    sequence(:phone_number) { |n| "555-555-121#{n}" }
    sequence(:location) { |n| "US#{n}" }
  end

end