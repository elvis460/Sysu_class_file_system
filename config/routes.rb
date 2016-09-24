Rails.application.routes.draw do

  resources 'backends',only: [:index]
  namespace :backends do
    root to: 'backends#index'

    resource :sessions , only: [:create,:destroy]
    resources :systems,only: %w(edit update)
    resources :admins do
      collection do
        get :login
      end
    end
    
  end
end
