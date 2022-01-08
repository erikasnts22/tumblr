Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts
  root 'posts#index'

  delete 'posts/:id/delete' => 'posts#destroy', as: 'posts_delete'
  get '/posts/:id/delete' => 'posts#destroy'
end
