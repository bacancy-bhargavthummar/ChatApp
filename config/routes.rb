Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'home#index'

  devise_for :users

  resources :conversations, only: [:create] do 
    member do
      post :close
    end
    resources :messages, only: [:create]
  end
  
end
