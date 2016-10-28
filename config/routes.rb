Rails.application.routes.draw do
    root 'landing#index'

    get '/login', to: 'sessions#new', as: "login"
    post '/sessions', to: 'sessions#create', as: "sessions"
    get '/logout', to: 'sessions#destroy', as: "logout"

    get "/users", to: "users#index"
    get "/users/new", to: "users#new", as: "new_user"
    get "/users/:id", to:"users#show", as: "user"
    post "/users", to: "users#create"
    get "/users/:id/edit", to: "users#edit", as: "edit_user"
    patch "/users/:id", to: "users#update"
    delete "/users/:id", to: "users#destroy", as: "destroy_user"


end
