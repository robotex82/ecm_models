module Ecm
  module Models
    class Routing
      def self.routes(router, options = {})
        options.reverse_merge! {}

        # router.resources :posts, :controller => 'ecm/models/posts'
      end
    end
  end
end

