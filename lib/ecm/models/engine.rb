module Ecm
  module Models
    class Engine < ::Rails::Engine
      # draper
      config.autoload_paths << File.join(Engine.root, 'app/decorators')

      # active admin
      initializer :ecm_models_engine do
        ::ActiveAdmin.setup do |active_admin_config|
          active_admin_config.load_paths += Dir[File.dirname(__FILE__) + '/active_admin']
        end
      end if defined?(::ActiveAdmin)
    end
  end
end

