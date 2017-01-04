Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root to: 'index#index'
    resources :laptimes
    resources :competitors
    resources :groups
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
