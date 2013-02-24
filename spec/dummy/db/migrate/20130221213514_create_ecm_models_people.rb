class CreateEcmModelsPeople < ActiveRecord::Migration
  def change
    create_table :ecm_models_people do |t|
      I18n.available_locales.map(&:to_s).sort.each do |locale|
        t.text "acting_experience_#{locale}".to_sym
        t.text "activities_#{locale}".to_sym
        t.text "dialects_#{locale}".to_sym
        t.text "education_#{locale}".to_sym
        t.text "features_#{locale}".to_sym
        t.text "fine_arts_gifts_#{locale}".to_sym
        t.text "hobbies_#{locale}".to_sym
        t.text "internal_notes_#{locale}".to_sym
        t.text "location_#{locale}".to_sym
        t.text "musical_education_#{locale}".to_sym
        t.text "notes_#{locale}".to_sym
        t.text "profession_#{locale}".to_sym
      end

      t.date    :birthdate
      t.integer :breast_size
      t.integer :collar_size
      t.integer :waist_size
      t.integer :hips_size
      t.string  :email
      t.string  :firstname
      t.integer :german_size
      t.boolean :glasses
      t.integer :hand_size
      t.boolean :has_braces
      t.boolean :has_children
      t.boolean :has_driving_license
      t.integer :hat_size
      t.integer :height
      t.string  :identifier
      t.boolean :is_tattooed
      t.boolean :is_pierced
      t.integer :jeans_length
      t.integer :jeans_width
      t.string  :lastname
      t.string  :mobile
      t.string  :phone
      t.integer :shoe_size
      t.boolean :visible, :default => true
      t.text    :websites

      t.references :category
      t.references :gender
      t.references :eye_color
      t.references :hair_color
      t.references :skin_type

      t.timestamps
    end
  end
end

