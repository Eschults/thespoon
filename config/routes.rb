Rails.application.routes.draw do
  # verb 'url', to: "controller#action"
  get 'contact', to: "pages#contact"
  get 'about', to: "pages#about"
  root "pages#home"
  # get '/', to: "pages#home"

  # Restaurants
  get 'restaurants', to: "restaurants#index"
  get 'restaurants/:id', to: "restaurants#show", as: :restaurant
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
