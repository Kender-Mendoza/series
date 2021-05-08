Rails.application.routes.draw do
  root to: "series#index"
  resources :series
  post "/filter_series", to: "series#filter_series"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
