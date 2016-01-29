Rails.application.routes.draw do
  
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :pins

  resources :categories, only: [:index, :new, :create]
  resources :categories, path: "", except: [:index, :new, :create] do
    resources :subcategories, only: [:index, :new, :create]
    resources :subcategories, path: "", except: [:index, :new, :create]
  end

  
root "pages#home"

get 'about' => 'pages#about'
get 'contact' => 'pages#contact'


end
