Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  resources :posts
  resources :users
  # devise_scope :user do
  #   get '/users/sign_in' => "devise/sessions#new", :as => :login
  # end
end
