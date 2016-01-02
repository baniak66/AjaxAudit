Rails.application.routes.draw do

  devise_for :users
  resources :audits do
    get 'delete'
  end
  resources :tasks

  root 'audits#index'
end
