# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ecm_models_category, :class => Ecm::Models::Category do
    I18n.available_locales.map(&:to_s).sort.each do |locale|
      sequence("name_#{locale}".to_sym) { |i| "name_#{locale}_#{i}" }
    end
  end
end
