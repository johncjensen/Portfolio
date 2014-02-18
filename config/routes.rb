Portfolio::Application.routes.draw do
  root "welcome#index"

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :posts do
    resources :comments
  end
  resources :projects do
    resources :comments
  end

  get 'myposts', to: 'posts#myposts'
end
