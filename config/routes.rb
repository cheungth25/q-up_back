Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # localhost:3000/api/v1
  namespace :api do
    namespace :v1 do

      post '/login', to: 'sessions#create'
      post '/signup', to: 'users#create'

    end
  end


end
