# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ecm_models_skin_type, :class => Ecm::Models::SkinType do
    I18n.available_locales.map(&:to_s).sort.each do |locale|
      sequence("name_#{locale}".to_sym) { |i| "skin type #{locale} #{i}" }
    end
  end
end
