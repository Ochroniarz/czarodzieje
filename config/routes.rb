Rails.application.routes.draw do
  resources :postacs
  resources :klasas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'home/about'
  get "/about" => "home#about"
end