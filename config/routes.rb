Rails.application.routes.draw do
    resources :topics do
      resources :posts, except: [:index]
    end

    resources :topics do
      resources :sponsored_posts, except: [:index]
    end

    resources :users, only: [:new, :create]

    resources :questions

    resources :advertisements

    get 'about' => 'welcome#about'

    root 'welcome#index'

end
