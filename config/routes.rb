Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'
  resources :terms
  resources :categories
  resources :users
  resources :session
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Users::Application.routes.draw do
    get '/signup' => 'users#new'
    post '/users' => 'users#create'
  # end

  # Session::Application.routes.draw do
    get '/login' => 'session#new'
    post '/login' => 'session#create'
    get '/logout' => 'session#destroy'
  # end
end
