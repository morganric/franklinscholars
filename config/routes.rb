Franklinscholars::Application.routes.draw do
  
  resources :sessions

  resources :students

  resources :schools

  authenticated :user do
	  root :to => "home#index"
  end

  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  unauthenticated do
	  root :to => "home#welcome", as: :authenticated_root
  end



end