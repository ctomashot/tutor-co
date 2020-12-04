Rails.application.routes.draw do
  resources :users
  resources :rooms
  resources :locations
  resources :reservations
  resources :instructors
  resources :students
  get '/subjects', to: "instructors#subjects"
  root  "application#homepage" 
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
