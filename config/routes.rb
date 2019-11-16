Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Do not for get your routes
  
  resources :authors, only: [:show, :new, :edit, :create, :update] 
  resources :posts, only: [:show, :new, :edit, :create, :update]

  # your porbly not listening but do not get your routes 
end
