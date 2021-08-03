Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/landing'
  get 'static_pages/contact'

  root 'static_pages#landing'

  resources :properties, only: :index
  resources :roles, only: [:index, :show]

  resources :interactions, only: [:index, :show] do
    resources :procedures, only: [:index, :show]
  end

  resources :softwares, except: :new do
    resources :concepts do
      resources :properties, except: :index
    end
  end

  resources :softwares_identity, only: [:show, :index] do
    resources :softwares, only: :new
  end
end
