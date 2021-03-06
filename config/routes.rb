Rails.application.routes.draw do

  resources :subscribers, only: [:create]
  resources :realestates, only: [:index, :show]

  resources :enquiries
  resources :properties do
    resources :images
    resources :comments
    resources :amenities
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
  resources :pages, only: [] do
    collection do
      get :explore
      get :single
      get :dashboard
      get :sellers
    end
  end
  root 'pages#home'

end
