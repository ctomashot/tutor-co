Rails.application.routes.draw do
  resources :rooms
  resources :locations
  resources :reservations
  resources :instructors
  resources :students
  get '/subjects', to: "instructors#subjects"
  root  "students#homepage" 
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "sessions", to: "sessions#destroy"
  get 'signup', to: "students#new"
 
end
