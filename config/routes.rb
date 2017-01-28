Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts do
    resources :comments
  end
  resources :users

  root to: 'pages#show', id: 'landing'
end
