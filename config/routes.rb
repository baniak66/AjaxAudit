Rails.application.routes.draw do

  resources :audits do
    resources :tasks
    get 'delete'
  end

  root 'audits#index'
end
