Rails.application.routes.draw do
  resources :polls do
    resources :answers do
      # put :upvote
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "polls#index"
end
