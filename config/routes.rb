Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # simple resources declaration handles index, show, new and create for us
  resources :places, only: [:index, :show, :new, :create]

  # if you prefer explicit routes you could also write:
  # get "/places", to: "places#index"
  # get "/places/:id", to: "places#show"
  # get "/places/new", to: "places#new"
  # post "/places", to: "places#create"
end
