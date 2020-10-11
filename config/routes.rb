Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'airplanes#index'
  get 'airplanes/new', to: "airplanes#new", as: :new_airplane
  get "airplanes/:id", to: "airplanes#show", as: :airplane
  get 'airplanes', to: "airplanes#index", as: :planes
  post 'airplanes', to: "airplanes#create"
end
