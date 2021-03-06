Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #

  root "home#index"

  resources :news, path: :publications

  delete "/publications/:id/remove_thumbnail", to: "news#remove_thumbnail"

  scope "/profile" do
    get "/publications", to: "profile#publications"
  end
end
