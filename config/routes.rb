Rails.application.routes.draw do

  resources :property_features
  resources :features
  resources :features
  resources :realestates, only: [:index, :show]

  resources :enquiries
  resources :properties do
    resources :images
    resources :comments
    resources :amenities
    resources :descriptions
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


  match '*unmatched_route', to: 'application#raise_not_found!', via: :all
end
