Rails.application.routes.draw do

  resources :orders

  resource :cart, only: [:show] do
    put 'add/:medicine_order_id', to: 'carts#add', as: :add_to
    put 'remove/:medicine_order_id', to: 'carts#remove', as: :remove_from
  end

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }, controllers: { registrations: 'registrations' }
  resources :customers
  root 'orders#index'
end
