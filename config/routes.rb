Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'home#index'
  get 'home/index'
  get 'home/doctors'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
