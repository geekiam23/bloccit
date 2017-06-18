Rails.application.routes.draw do
    resources :topics do
      resources :posts, except: [:index]
    end

    resources :topics do
      resources :sponsored_posts, except: [:index]
    end

    resources :users, only: [:new, :create]
    post 'users/confirm' => 'users#confirm'

    resources :sessions, only: [:new, :create, :destroy]

    resources :questions

    resources :advertisements

    get 'about' => 'welcome#about'

    root 'welcome#index'

end
