Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks' , to: 'tasks#index'

  get 'tasks/new' , to: 'tasks#new'

  post 'tasks' , to: 'tasks#create'

  get 'tasks/:id/edit' , to: 'tasks#edit'

  patch 'tasks/:id' , to: 'tasks#update'

  get 'tasks/:id' , to: 'tasks#show', as: :task

  delete 'tasks/:id' , to: 'tasks#destroy'
 
end






  # # Read all restaurants
  # get 'restaurants' , to: 'restaurants#index' #index is rails convention for all

  # # Read one restaurant
  # get 'restaurants/:id' , to: 'restaurants#show' # ':' means dynamic input

  # # Create one restaurant
  #   # see the form
  #   get 'restaurants/new' , to: 'restaurants#new'

  #   #submit form and create new restaurant record
  #   post 'restaurants' ,  to: 'restaurants#create'

  # # Update one restaurant
  #   # see the form (with current data)
  #   get 'restaurants/:id/edit' , to: 'restaurants#edit'

  #   #submit form and update record of restaurant
  #   patch 'restaurants/:id/' , to: 'restaurants#update'

  # # Delete one specific restaurant
  # delete 'restaurants/:id' , to: 'restaurants#destroy'