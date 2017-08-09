Rails.application.routes.draw do

  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  
  root 'welcome#index'
  
  # Magic trick to redirect any non covered route to root
  get '*path' => redirect('/')
  
end
