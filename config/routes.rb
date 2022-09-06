Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :comments
  get 'pages/info'


  resources :ideas, only: [:show, :index]

  authenticated :user do
    root 'ideas#index', as: :authenticated_root
  end

  unauthenticated :user do
    root to: redirect('/users/sign_in')
  end
end
