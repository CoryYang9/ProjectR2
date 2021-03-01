Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/index' => 'users#index'
  #get 'user/id' => 'users#id'
  #get 'photos/:id', to: 'photos#index#id', via: [:get, :post]
  #get 'user/id' => redirect('/photos/index/id')
  root to: "users#index"
  resources :users
  resources :photos
end
