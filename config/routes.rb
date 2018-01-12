Rails.application.routes.draw do

  root to: 'home#index'
  devise_for :users

  resources :clubs do
    resources :members
    resources :meetings
    resources :events
  end
end
