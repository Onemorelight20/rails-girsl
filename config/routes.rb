Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :comments
  get 'pages/info'


  resources :ideas

  authenticated :user do
    root 'ideas#index', as: :authenticated_root
  end

  unauthenticated :user do
    root to: redirect('/users/sign_in')
  end
end
