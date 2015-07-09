Rails.application.routes.draw do

  resources :properties do
    resources :images
  end

  resources :banners
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  get 'users/profile' => 'users#profile'
  # You can have the root of your site routed with "root"
  get 'pages/explore' => 'pages#explore'
  get 'pages/single' => 'pages#single'
  get 'pages/dashboard' => 'pages#dashboard'
  root 'pages#home'

end
