# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ecm_models_gender, :class => Ecm::Models::Gender do
    I18n.available_locales.map(&:to_s).sort.each do |locale|
      sequence("name_#{locale}".to_sym) { |i| "gender #{locale} #{i}" }
    end
  end
end
