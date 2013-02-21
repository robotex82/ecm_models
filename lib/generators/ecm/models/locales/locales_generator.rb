module Ecm
  module Models
    module Generators
      class LocalesGenerator < Rails::Generators::Base
        desc "Copies the locale files to your application"

        source_root File.expand_path('../../../../../../config/locales', __FILE__)
        
        def generate_locales
          copy_file "ecm.models.en.yml", "config/locales/ecm.models.en.yml"
          copy_file "ecm.models.de.yml", "config/locales/ecm.models.de.yml"
        end   
      end
    end
  end
end        
