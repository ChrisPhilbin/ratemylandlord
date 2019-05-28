Rails.application.routes.draw do
 
  resources :tenants

  resources :reviews
  
  resources :properties do
  	resources :reviews
  end

  resources :landlords do
  	resources :properties
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
