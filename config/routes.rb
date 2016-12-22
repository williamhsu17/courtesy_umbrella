Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :umbrellas  do
    collection do
      post :borrow
    end
  end

  resources :station do
    collection do
      post :return
    end
  end

  namespace :admin do
    resources :umbrellas
    resources :locations
    resources :users
  end

  scope :path => '/api/v1/', :module => "api_v1", :as => 'v1', :defaults => { :format => :json } do

    post "login" => "auth#login"
    post "logout" => "auth#logout"

    resources :umbrellas do
      collection do
        post :borrow
        get :list
      end
    end
  end

  root to: "umbrellas#index"
end
