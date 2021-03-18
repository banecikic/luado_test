Rails.application.routes.draw do

  devise_for :users

  resources :projects do
    resources :project_phases
  end
  root "home#index"
end
