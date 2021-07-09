Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/landing'
  get 'static_pages/contact'

  root 'static_pages#landing'

  resources :roles, only: [:index, :show]
  resources :properties, only: :index

  resources :versions, only: [:edit, :update, :destroy] do
    resources :concepts do
      resources :properties, except: :index
    end
  end
  
  resources :softwares do
    resources :versions, only: [:index, :new, :create, :show]
  end


  resources :interactions, only: [:index, :show] do
    resources :procedures, only: [:index, :show]
  end
end
