Rails.application.routes.draw do
  root to: "flats#index"
  get "flat/:id", to: "flats#show", as: :flat
end
