Swarm3::Application.routes.draw do
  
  devise_for :users
  resources :users

  resources :swarm_requests do
    put 'accept_requester_price_now', :on => :member
    resource :request_rating
    resources :bids do
      put 'accept', :on => :member
      resources :delivery_ratings
    end
  end
  
  root :to => "pages#home"
  
  match '/about'   => 'pages#about'
  match '/deliver' => 'swarm_requests#index'
  match '/get'     => 'swarm_requests#new'
  match '/review'  => 'bids#show'
  match '/clustertest' => 'pages#clustertest'
end
