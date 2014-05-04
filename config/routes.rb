PostitTemplate::Application.routes.draw do
  root to: 'posts#index'
  resources :users
  resources :friendships
  get 'yelp/:longitude/:latitude', to: 'yelp#index', :constraints => { :longitude => /[^\/]*/ , :latitude => /[^\/]*/ } 
end
