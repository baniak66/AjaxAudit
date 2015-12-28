Rails.application.routes.draw do

  resources :audits do
    get 'delete'
  end

  root 'audits#index'
end
