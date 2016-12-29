Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" } #look at the user/registrations controller first
  
  #routes for many-to-many table
  resources :user_stocks, except: [:show, :edit, :update]
  resources :users, only: [:show]
  resources :friendships
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    root 'welcome#index'
    
  #route for portfolio page
    get 'my_portfolio' => "users#my_portfolio"
    
  #route to seach for a specific stock  
    get 'search_stocks' => "stocks#search"
    
  #route for friends page
    get 'my_friends' => "users#my_friends"
    
  #routes for friend lookup
    get 'search_friends' => "users#search"
    post 'add_friend' => "users#add_friend"
end
