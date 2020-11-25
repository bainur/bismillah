Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  ExceptionHunter.routes(self)
  mount_devise_token_auth_for 'User', at: '/api/v1/users', controllers: {
    registrations: 'api/v1/registrations',
    sessions: 'api/v1/sessions',
    passwords: 'api/v1/passwords'
  }

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      get :status, to: 'api#status'

      devise_scope :user do
        resource :user, only: %i[update show]
      end
      resources :settings, only: [] do
        get :must_update, on: :collection
      end

      resources :products, only: %i[index]
      resources :carts, except: :show

       # cart
      post :add_to_cart, to: 'carts#add_to_cart'
      post :remove_cart_item, to: 'carts#remove_cart_item'
      get  :cart_list, to: 'carts#cart_items'
      delete :remove_carts, to: 'carts#remove_carts'

      # order
      post :create_order, to: 'orders#create'
      get :order_list, to: 'orders#index'
    end
  end
end
