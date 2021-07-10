Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #

  root "home#index"

  # scope "/publications" do
  #   get "/new", to: "news#new"
  #   post "/new", to: "news#create"
  #   get "/read/:id", to: "news#read"
  #   delete "/:id", to: "news#delete"
  # end

  resources :news, path: :publications

end
