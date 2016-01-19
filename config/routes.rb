Rails.application.routes.draw do
  
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :pins

  resources :categories do
  resources :subcategories
  end

  
root "pages#home"

get 'about' => 'pages#about'
get 'contact' => 'pages#contact'


end
