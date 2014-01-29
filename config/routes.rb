Portfolio::Application.routes.draw do
  devise_for :users
  resources :posts
  resources :projects
  root "welcome#index"
  get 'myposts', to: 'posts#myposts'
end
