Rails.application.routes.draw do

  resources :books, only: [:new, :index, :show, :edit, :create, :destroy, :update]
  post 'books' => 'books#create'
  get 'users/new'
  devise_for :users
  resources :users, only: [:show, :edit, :update, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'homes#top'
get "/home/about" => "homes#about"
end
