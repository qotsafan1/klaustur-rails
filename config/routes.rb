Rails.application.routes.draw do
  resources :information
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :articles
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root to: 'index#index'
    get '/news', to: 'index#news'
    get '/results', to: 'index#results'
    get '/info', to: 'index#info'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
