Rails.application.routes.draw do
  devise_for :users
  # root "welcome#index"
  root 'reminder#index'
   resources :reminder


 
end
