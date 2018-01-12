Rails.application.routes.draw do
  devise_for :users

  resources :clubs do
    resources :members
    resources :meetings
    resources :events 
  end
end
