Rails.application.routes.draw do
  get 'home' => 'welcome/index'
  root 'welcome#index'
  
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'
  
  
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end