Dummy::Application.routes.draw do
  localized(I18n.available_locales) do
    scope "/(:i18n_locale)", :constraints => {:i18n_locale => /#{I18n.available_locales.join('|')}/} do
      devise_for :admin_users, ActiveAdmin::Devise.config
      ActiveAdmin.routes(self)

      Ecm::Models::Routing.routes(self)
    end # scope
  end # localized
end # Dummy::Application.routes.draw

