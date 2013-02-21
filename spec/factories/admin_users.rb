# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_user do
    sequence(:email) { |i| "admin_user_#{i}@example.com" }
    password 'f0ob4rb4z'
  end
end

