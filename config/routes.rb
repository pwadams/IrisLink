Rails.application.routes.draw do

   root 'welcome#index'

   get 'sign-up', to: 'registrations#new'
   post 'sign-up', to: 'registrations#create'
   get 'sign-in', to: 'authentication#new'
   post 'sign-in', to: 'authentication#create'
   get 'sign-out', to: 'authentication#destroy'

   get 'about', to: 'about#index'
   get 'scoring', to: 'scoring#index'

   resources :surveys, only: [:index, :new, :create, :show]
   resources :patients, only: [:index, :show, :create]

end
