Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  resources :posts do
    resources :comments
  end
  resources :users, only: [:show]
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
  # devise_scope :user do
  #   get '/users/sign_in' => "devise/sessions#new", :as => :login
  # end
end
