Rails.application.routes.draw do
  devise_for :users
  resources :comments
  get 'pages/info'

  root to: redirect('/users/sign_in')
  resources :ideas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
