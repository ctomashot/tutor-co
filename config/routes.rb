Rails.application.routes.draw do
  resources :users
  resources :rooms
  resources :locations
  resources :reservations, only: [:new, :create, :edit, :update, :destroy]
  resources :instructors
  resources :students
  get '/subjects', to: "instructors#subjects"
  root  "students#homepage" 
  get "login", to: "sessions#new"
  post "new_session", to: "sessions#create"
  delete "sessions", to: "sessions#destroy"
  get 'signup', to: "students#new"
end
