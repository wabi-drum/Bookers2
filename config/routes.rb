Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'home/about', to: 'homes#about', as: 'about'
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:new, :index, :show, :edit, :create]
  get '/books/:id', to: 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
