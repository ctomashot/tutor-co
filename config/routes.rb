Rails.application.routes.draw do
  resources :users
  resources :rooms
  resources :locations
  resources :reservations
  resources :instructors
  resources :students
  get '/subjects', to: "instructors#subjects"
  root  "application#homepage" 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
