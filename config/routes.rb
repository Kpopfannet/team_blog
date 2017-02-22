Rails.application.routes.draw do
    resources :categories
    resources :articles
    resources :rolls
    resources :members
    resources :blogs, format: false
    
    get 'home/index'
    match '/login',     to: 'members#login',   via: [:post],   as: 'login',    format: false
    match '/logout',    to: 'members#logout',  via: [:delete], as: 'logout',   format: false
    match '/member/:member_id/articles/new', to: 'articles#new', via: [:get], as: 'member_new_article', format: false
    root 'home#index'
end
