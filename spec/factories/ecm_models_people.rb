# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ecm_models_person, :class => Ecm::Models::Person do
    association :category, :factory => :ecm_models_category
    association :eye_color, :factory => :ecm_models_eye_color
    association :gender, :factory => :ecm_models_gender
    association :hair_color, :factory => :ecm_models_hair_color
    association :skin_type, :factory => :ecm_models_skin_type

    birthdate 21.years.ago
    sequence(:email) {|i| "person_#{i}@example.com" }
    firstname 'Jane'
    sequence(:identifier) {|i| "#{i}" }
  end
end
