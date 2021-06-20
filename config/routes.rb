Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/landing'
  get 'static_pages/contact'

  root 'static_pages#landing'

  resources :softwares do
    resources :concepts do
      resources :properties, only: [:show, :update, :edit, :destroy]
    end
  end
end
