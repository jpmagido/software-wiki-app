Rails.application.routes.draw do
  resources :softwares do
    resources :concepts do
      resources :properties, only: [:show, :update, :edit, :destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
