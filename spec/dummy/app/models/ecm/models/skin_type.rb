class Ecm::Models::SkinType < ActiveRecord::Base
  self.table_name = 'ecm_models_skin_types'

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
