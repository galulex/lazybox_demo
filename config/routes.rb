LazyboxDemo::Application.routes.draw do

  resources :tasks
  resources :images, only: :index
  resource :spinner, only: :show

  root 'tasks#index'

end
