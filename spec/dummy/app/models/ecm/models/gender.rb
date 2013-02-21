class Ecm::Models::Gender < ActiveRecord::Base
  self.table_name = 'ecm_models_genders'

  # attributes
  attr_accessible :name_de,
                  :name_en,
                  :name_es

  # translations
  translate :name

  # validations
  validates :name, :locales => :all,
                   :presence => true,
                   :uniqueness => true
end
