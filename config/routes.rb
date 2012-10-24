Pictures::Application.routes.draw do
 
 get '/pictures/new' => 'photographs#new', :as => :new_picture
 post '/pictures' => 'photographs#create', :as => :create_picture
 
 get '/pictures/edit/:id' => 'photographs#edit', :as => :edit_pic
 put '/pictures/:id' => 'photographs#change'
 delete '/pictures/:id' => 'photographs#remove'
 
 get '/pictures' => 'photographs#index', :as => :all_pictures
 
 get '/pictures/:id' => 'photographs#show', :as => :one_picture
 

end
