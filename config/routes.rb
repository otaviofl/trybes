Rails.application.routes.draw do
  resources :experiences
  devise_for :users
  root to: 'pages#home'

  resources :experiences, only: [:index, :show, :new, :create] do
    resources :ratings, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
