Photogur::Application.routes.draw do

  resources :pictures

# post 'pictures/' => 'pictures#create' #add new part 2
# #this makes the index the homepage/root instead
# # of the "Rails" page

# get 'pictures' => 'pictures#index'

# get 'pictures/new' => 'pictures#new' #add new part 1


# get 'pictures/:id/edit' => 'pictures#edit', as: "edit_picture" #edit part 1
# # patch 'pictures/:id' => 'pictures#update' #edit part 2

# # delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"
 

# get 'pictures/:id' => 'pictures#show', as: "picture"

  root :to => 'pictures#index'


end


