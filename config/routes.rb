Rails.application.routes.draw do
  resources :cars
  resources :brands
  get '/brands/:id/cars', to: 'brands#showCars'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
