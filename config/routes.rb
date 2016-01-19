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
    resources :contents
    resources :categories
    resources :attachments do
      collection do
        post :sort
        post :ck_upload
        delete :delete
      end
    end
    resources :navs do
      collection do
        post :sort
      end
    end

  end
  resources 'homes'
  root 'homes#index'
end
