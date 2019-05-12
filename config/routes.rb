Rails.application.routes.draw do
  resources :reviews
  resources :tenants
  resources :properties
  resources :landlords do
  	resources :properties
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
