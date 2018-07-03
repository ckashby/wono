Rails.application.routes.draw do
  resources :job_requests
  devise_for :users
  root 'pages#index'
  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
