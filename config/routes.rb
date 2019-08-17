Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tweets#index'
  resources :tweets
  resources :relationships, only: [:create, :destroy]
  get '/:username', to: 'users#show'
  get '/:username/followers', to: 'users#followers'
  get '/:username/following', to: 'users#following'
end
