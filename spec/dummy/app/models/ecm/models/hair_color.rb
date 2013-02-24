class Ecm::Models::HairColor < ActiveRecord::Base
  self.table_name = 'ecm_models_hair_colors'

  # attributes
  attr_accessible :name,
                  :name_de,
                  :name_en,
                  :name_es

  # translations
  translate :name

  # validations
  validates :name, :locales => :all,
                   :presence => true,
                   :uniqueness => true

  # public methods
  def to_s
    name
  end
end
