Rails.application.routes.draw do

  root 'home#index'

  resources :news_stories, controller: 'news'

  resources :posts

  namespace :pages do
    get :index
  end

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
