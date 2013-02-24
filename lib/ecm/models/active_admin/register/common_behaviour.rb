module Ecm::Models
  module ActiveAdmin
    module Register
      module CommonBehaviour
        def self.included(base)
          base.menu :parent => Proc.new { I18n.t('ecm.models.active_admin.main_menu') }
        end
      end # module CommonBehaviour
    end # module Register
  end # module ActiveAdmin
end # module Ecm::Models
