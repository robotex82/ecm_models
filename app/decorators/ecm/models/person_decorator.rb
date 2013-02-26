module Ecm::Models
  class PersonDecorator < ::Draper::Decorator
    def age
      source.age
    end

    def bust_size
      source.bust_size
    end

    def eye_color
      source.eye_color
    end

    def firstname
      source.firstname
    end

    def hips_size
      source.hips_size
    end

    def hair_color
      source.hair_color
    end

    def height
      source.height
    end

    def identifier
      source.identifier
    end

    def shoe_size
      source.shoe_size
    end

    def skin_type
      source.skin_type
    end

    def waist_size
      source.waist_size
    end
  end # class PersonDecorator < ::Draper::Decorator
end # module Ecm::Models

