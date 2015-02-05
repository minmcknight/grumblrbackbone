Rails.application.routes.draw do
  
  root "grumbles#index"
  #serving our single page app and resources
  resources :grumbles, :only =>[:index]
  #serving JSON regarding grumbles
  namespace :api do
    resources :grumbles, :except =>[:new, :edit]
  end

end
