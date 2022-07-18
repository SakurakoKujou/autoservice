Rails.application.routes.draw do
  get 'orders/index'
  resources :categories , :performers, :services , :orders




  root to: 'services#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
