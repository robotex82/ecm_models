class CreateEcmModelsPeople < ActiveRecord::Migration
  def change
    create_table :ecm_models_people do |t|
      t.translate_columns do |tc|
        tc.text :acting_experience
        tc.text :activities
        tc.text :dialects
        tc.text :education
        tc.text :features
        tc.text :fine_arts_gifts
        tc.text :hobbies
        tc.text :internal_notes
        tc.text :location
        tc.text :musical_education
        tc.text :notes
        tc.text :profession
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

