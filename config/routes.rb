HHF::Application.routes.draw do

  #Routes for Session resource:
  get '/login', controller: 'sessions', action: 'new'
  post '/sessions', controller: 'sessions', action: 'create'
  get "/logout", controller: 'sessions', action: 'remove'

  post "/search", controller: 'movies', action: 'filter'

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # Route for our home page.
  get '/home', controller: 'products', action: 'index'

  get "/products", controller: 'products', action: 'index'
  post "/products", controller: 'products', action: 'create'

  get '/products/new', controller: 'products', action: 'new', as: 'new_product'

  get '/products/:id', controller: 'products', action: 'show'
  put '/products/:id', controller: 'products', action: 'update'

  delete '/products/:id', controller: 'products', action: 'remove'

  get "/products/:id/edit", controller: 'products', action: 'edit'

end
