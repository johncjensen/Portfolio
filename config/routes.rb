Portfolio::Application.routes.draw do
  resources :posts
  resources :projects
  root "welcome#index"
end
