Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'airplanes#index'
  resources :airplanes do
    resources :crew_members, only: [:new, :create]
  end

  resources :crew_members, only: [:edit, :update, :destroy]
end
