PostitTemplate::Application.routes.draw do
  root to: 'posts#index'
  resources :users
  resources :friendships
end
