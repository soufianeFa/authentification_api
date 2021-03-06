Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'

  namespace :api, defaults: { format: :json } do
    authenticated do
      root to: "article#index", as: :authenticated_root
    end

      root to: "article#index"

    resources :messages, :only => [:show, :create, :edit, :update, :destroy]
      resources :participations, :only => [:show, :create, :edit, :update, :destroy]
      resources :users, :only => [:show, :create, :edit, :update, :destroy]
      resources :conversations, :only => [:show, :create, :edit, :update, :destroy]
  end

end
