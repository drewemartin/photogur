Photogur::Application.routes.draw do

root :to => 'pictures#index'
#this makes the index the homepage/root instead
# of the "Rails" page

get 'pictures' => 'pictures#index'

get 'pictures/new' => 'pictures#new'
post 'pictures/' => 'pictures#create'
 

get 'pictures/:id' => 'pictures#show', as: "picture"




end


