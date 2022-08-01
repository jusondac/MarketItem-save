Rails.application.routes.draw do
  resources :schedule_take_keeps do
    collection do
      get :create_schedule
    end
  end
  resources :daily_take_keeps
  resources :item_variants
  resources :item_types
  resources :items
  resources :customers
  devise_for :users
  get 'home/index'
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
