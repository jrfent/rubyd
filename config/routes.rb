Rails.application.routes.draw do

  resources :pins
  resources :subcategories
  resources :categories
  resources :categories
  devise_for :users, :controllers => { registrations: 'registrations' }
  
root "pages#home"

get 'about' => 'pages#about'
get 'contact' => 'pages#contact'


end
