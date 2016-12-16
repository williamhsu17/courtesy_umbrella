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
  end

  root to: "umbrellas#index"
end
