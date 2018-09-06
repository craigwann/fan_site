Rails.application.routes.draw do

  resources :users do
    resources :songs
  end

  # resources :songs do
  #   resources :opinions
  # end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
