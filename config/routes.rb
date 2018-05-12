Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  root 'welcome#index'
  resources :characters
  resources :fights, only: [:index, :create]
  get '/character_picture', to: 'welcome#show_character_picture'
  resources :weapons, only: [:index, :new, :create]
  resources :shields, only: [:index, :new, :create]

end
