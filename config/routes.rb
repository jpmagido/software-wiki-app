Rails.application.routes.draw do
  namespace :admin do
    get 'sessions/new'
    post 'sessions/create', to: 'sessions#create'
    delete 'sessions/destroy', to: 'sessions#destroy'

    resources :accounts, only: [:show, :edit, :update]
  end

  get 'static_pages/home'
  get 'static_pages/landing'
  get 'static_pages/contact'

  root 'static_pages#landing'

  resources :properties, only: :index
  resources :interactions, :users, only: [:index, :show]

  resources :softwares do
    resources :concepts do
      resources :properties, except: :index
    end
  end
end
