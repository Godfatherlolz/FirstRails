Rails.application.routes.draw do

  resources :shops
  root to: 'pages#home'
  get '/salut', to: 'pages#salut'
  get '/nearest', to: 'shops#nearest' , :as => 'nearest_shops'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
