Rails.application.routes.draw do
  # get 'home/index'

  devise_for :users

	root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :conversations, only: [:create] do
  	resources :messages, only: [:create]
    member do
      post :close
    end
  end
end
