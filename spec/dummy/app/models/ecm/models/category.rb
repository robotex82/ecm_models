class Ecm::Models::Category < ActiveRecord::Base
  # attributes
  attr_accessible :name_de,
                  :name_en,
                  :name_es

  # translations
  translate :name

  # validations
  validates :name, :presence => true, :locales => :all
end

