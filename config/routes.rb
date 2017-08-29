Rails.application.routes.draw do
  root 'home#index'

  namespace :pages do
    get :index
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
