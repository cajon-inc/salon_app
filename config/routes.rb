Rails.application.routes.draw do

  root 'home#about'

  devise_for :users

  resources :salons, except: [:edit] do
    member do
      get 'listing'
      get 'sublisting'
      get 'concept'
      get 'coloring'
      get 'location'
      get 'links'
      get 'tagmanage'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
