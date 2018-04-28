Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  root 'welcome#index'
  resources :characters, only: [:index, :show, :new, :create]
  resources :fights, only: [:index, :create]

end
