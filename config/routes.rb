Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #

  root "home#index"

  get "/publications/new", to: "news#new"
  post "/publications/new", to: "news#create"
  get "/publications/read/:id", to: "news#read"

end
