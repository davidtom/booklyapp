Rails.application.routes.draw do

  # somewebsite.com/api/v1/users

  namespace :api do
    namespace :v1 do
      resources :users


      post '/login', to: 'sessions#create'
      post '/signup', to: 'users#create'
      get '/me', to: 'users#me'
    end
  end



  # somewebsite.com/users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
