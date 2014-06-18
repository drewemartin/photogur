Photogur::Application.routes.draw do

get 'pictures' => 'pictures#index'

get 'pictures/new' => 'pictures#new'
post 'pictures/' => 'pictures#create'
 

get 'pictures/:id' => 'pictures#show', as: "picture"




end


