Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end
  namespace :admin do
    resources :restaurants, only: [:index, :edit, :update, :destroy]
  end
  root to: 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
