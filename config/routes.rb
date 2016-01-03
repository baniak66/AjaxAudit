Rails.application.routes.draw do

  devise_for :users
  resources :audits do
    get 'delete'
    get 'welcome'
  end
  resources :tasks

  root 'audits#welcome'
end
