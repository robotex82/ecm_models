module Ecm
  module Models
    class Routing
      def self.routes(router, options = {})
        options.reverse_merge!({})

        router.resources :ecm_models_people, :controller => 'ecm/models/people'
      end
    end
  end
end

