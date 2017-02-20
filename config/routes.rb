Rails.application.routes.draw do
    resources :categories
    resources :articles
    resources :rolls
    resources :members
    resources :blogs
    
    get 'home/index'
    root 'home#index'
end
