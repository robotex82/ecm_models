module Ecm
  module Models
    module Generators
      class InstallGenerator < Rails::Generators::Base
        desc "Generates the intializer"

        source_root File.expand_path('../templates', __FILE__) 
        
        def generate_intializer
          copy_file "ecm_models.rb", "config/initializers/ecm_models.rb"
        end   
      end
    end
  end
end        
