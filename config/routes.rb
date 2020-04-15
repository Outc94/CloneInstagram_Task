Rails.application.routes.draw do
    resources :contacts
    resources :profiles
    resources :posts do
      collection do
        post :confirm
      end
    end
    root "users#new"
    resources :sessions, only: [:new, :create, :destroy]
    resources :users
    resources :favorites, only: [:create, :destroy, :index]
    mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
