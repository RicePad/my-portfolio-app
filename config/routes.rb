Rails.application.routes.draw do
  
  devise_for :users
  get 'angular', to: "portofolios#angular"
  
  resources :portofolios, except: [:show]
  
  get 'portofolio/:id', to: 'portofolios#show', as: 'portofolo_show'
  
  get 'pages/home'
  get 'aboutme', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
    
  root to: 'pages#home'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
