Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :newsfeed, only: [:index], :defaults => { format: :json }
  root 'newsfeed#index'
end
