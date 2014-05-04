PostitTemplate::Application.routes.draw do
  root to: 'posts#index'
  resources :users
  resources :friendships
  get 'yelp/:longitude/:latitude', to: 'yelp#index', :constraints => { :longitude => /[^\/]*/ , :latitude => /[^\/]*/ } 
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
