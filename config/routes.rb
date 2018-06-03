Rails.application.routes.draw do
  resources :posts
  root to: 'home#index'
  get '/subscribe', to: 'posts#subscribe'
  get '/subscribers', to: 'posts#subscribers'
  get '/subscription', to: 'posts#subscribed'
  delete 'delete_subscriber/:id(.:format)', :to => 'posts#delete_subscriber', as: 'delete_subscriber'

  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

