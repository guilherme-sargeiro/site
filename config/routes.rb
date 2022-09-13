Rails.application.routes.draw do
  devise_for :usuarios
  root 'pages#home'
  
  resources :registers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
