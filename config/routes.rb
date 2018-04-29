Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  root 'welcome#index'
  resources :characters
  resources :fights, only: [:index, :create]
  post '/first_character_picture', to: 'welcome#show_first_character_picture'
  post '/second_character_picture', to: 'welcome#show_second_character_picture'

end
