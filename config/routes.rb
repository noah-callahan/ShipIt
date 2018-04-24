Rails.application.routes.draw do

  get '/' => 'home#index'
  get 'home/index' => 'home#index'

  post 'dashboard/index'
  get 'dashboard/index'

  devise_for :shippers
  resources :ships
  resources :jobs
  resources :contracts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
