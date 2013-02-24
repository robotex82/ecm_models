class Ecm::Models::Person < ActiveRecord::Base
  self.table_name = 'ecm_models_people'

  # associations
  belongs_to :category
  belongs_to :eye_color
  belongs_to :gender
  belongs_to :hair_color
  belongs_to :skin_type

  # attributes
  I18n.available_locales.each do |locale|
    %w(acting_experience activities dialects education features fine_arts_gifts hobbies internal_notes location musical_education notes profession).each do |attribute|
      attr_accessible "#{attribute}_#{locale}"
    end
  end

  attr_accessible :category_id,
                  :eye_color_id,
                  :gender_id,
                  :hair_color_id,
                  :skin_type_id

  attr_accessible :birthdate,
                  :boolean,
                  :breast_size,
                  :collar_size,
                  :email,
                  :firstname,
                  :german_size,
                  :glasses,
                  :hand_size,
                  :has_braces,
                  :has_children,
                  :has_driving_license,
                  :hat_size,
                  :height,
                  :hips_size,
                  :identifier,
                  :is_pierced,
                  :is_tattooed,
                  :jeans_length,
                  :jeans_width,
                  :lastname,
                  :mobile,
                  :phone,
                  :shoe_size,
                  :visible,
                  :waist_size,
                  :websites

#  # translations
#  translate :name

  # validations
  %w( birthdate email firstname identifier category eye_color gender hair_color skin_type ).each do |column|
    validates column, :presence => true
  end
  validates :email, :uniqueness => true
  validates :identifier, :uniqueness => true
end

