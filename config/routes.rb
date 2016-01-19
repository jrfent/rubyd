Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  
root "pages#home"

get 'about' => 'pages#about'
get 'contact' => 'pages#contact'


end
