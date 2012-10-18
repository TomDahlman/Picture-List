Pictures::Application.routes.draw do
 
 get '/pictures/new', {:controller => 'photographs', :action => 'new'}
 get '/pictures', {:controller => 'photographs', :action => 'index'}
 get '/pictures/:id', {:controller => 'photographs', :action => 'show'}
 post '/pictures', {:controller => 'photographs', :action => 'create'}

end
