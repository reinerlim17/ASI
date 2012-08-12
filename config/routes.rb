ASI::Application.routes.draw do

  resources :sources

  resources :nature_of_businesses

  match '/help', :to => 'pages#help'
  match '/about', :to => 'pages#about'
  devise_for :users
  root :to => "pages#home"
    
  resources :inquires do
  	member do
  		get 'client'
  	end
  end
  resources :clients

  end
