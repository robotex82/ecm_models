ActiveAdmin.register Ecm::Models::Person do
  include Ecm::Models::ActiveAdmin::Register::CommonBehaviour

  form do |f|
    f.inputs do
      f.input :visible
    end

    f.inputs do
      f.input :category, :as => :radio
    end
    f.inputs do
      f.input :eye_color, :as => :radio
    end
    f.inputs do
      f.input :gender, :as => :radio
    end
    f.inputs do
      f.input :hair_color, :as => :radio
    end
    f.inputs do
      f.input :skin_type, :as => :radio
    end

    f.inputs Ecm::Models::Person.human_attribute_name(:details) do
      f.input :glasses
      f.input :has_braces
      f.input :has_children
      f.input :is_pierced
      f.input :is_tattooed
    end # f.inputs

    f.inputs Ecm::Models::Person.human_attribute_name(:contact_data) do
      f.input :email
      f.input :has_driving_license
      f.input :websites
    end # f.inputs

    f.inputs Ecm::Models::Person.human_attribute_name(:personal_data) do
      f.input :birthdate
      f.input :identifier
      f.input :firstname
      f.input :lastname
      f.input :mobile
      f.input :phone
    end # f.inputs

    f.inputs Ecm::Models::Person.human_attribute_name(:sizes) do
      f.input :breast_size
      f.input :collar_size
      f.input :german_size
      f.input :hand_size
      f.input :hat_size
      f.input :height
      f.input :hips_size
      f.input :jeans_length
      f.input :jeans_width
      f.input :shoe_size
      f.input :waist_size
    end # f.inputs

    f.translate_inputs do |ti|
      f.inputs do
        ti.input :acting_experience
        ti.input :activities
        ti.input :dialects
        ti.input :education
        ti.input :features
        ti.input :fine_arts_gifts
        ti.input :hobbies
        ti.input :internal_notes
        ti.input :location
        ti.input :musical_education
        ti.input :notes
        ti.input :profession
      end # f.translate_inputs
    end # f.inputs

    f.actions
  end # form
end # ActiveAdmin.register

