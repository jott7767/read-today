Rails.application.routes.draw do

  root 'home#index'

  resources :news_stories, controller: 'news'

  resources :posts

  namespace :pages do
    get :index
  end

  resources :connects
  resources :shared_stories
  resources :carousel_images

  resources :activities do
    resources :attached_pdfs, only: [:new, :create, :destroy]
    resources :attached_images, only: [:new, :create, :destroy]
  end

  devise_for :users

  post "/toggle_activity/:id", to: "toggle_activity#update", as: "toggle_activity"
  post "/contact_us", to: "mail#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
