Rails.application.routes.draw do

  # homes
  root to: 'homes#top'
  get "/support" => "homes#support", as: 'support'

  devise_for :users
  # user
   resources :users, only: [:edit,:index,:update,:destroy]
   get "user/mypage" => "users#mypage", as: 'mypage'
   get 'user/unsubscribe' => "users#unsubscribe", as: 'unsubscribe'
   get 'user/:id' => "users#others", as: 'others'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
