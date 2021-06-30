Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/landing'
  get 'static_pages/contact'

  root 'static_pages#landing'

  resources :properties, only: :index
  resources :interactions, :roles, only: [:index, :show]

  resources :softwares do
    resources :concepts do
      resources :properties, except: :index
    end
  end
end
