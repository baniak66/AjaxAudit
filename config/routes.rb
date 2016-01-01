Rails.application.routes.draw do

  resources :audits do
    get 'delete'
  end
  resources :tasks

  root 'audits#index'
end
