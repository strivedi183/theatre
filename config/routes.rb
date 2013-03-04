Theatre::Application.routes.draw do
  root :to => 'home#index'

  resources :users, :only => [:new, :create]
  resources :movies, :only => [:index]
  resources :theaters, :only => [:index, :purchase, :new] do
    member do
      post 'purchase'
    end
  end

  post '/theaters/purchase' => 'theaters#purchase'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
