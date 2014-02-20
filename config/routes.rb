LazyboxDemo::Application.routes.draw do

  resources :tasks
  resources :images, only: :index

  root 'tasks#index'

end
