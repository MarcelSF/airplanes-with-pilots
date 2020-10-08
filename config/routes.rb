Rails.application.routes.draw do
  get 'airplanes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'airplanes', to: "airplanes#index", as: :planes
end
