Rails.application.routes.draw do

  # 1 homes
  root to: 'homes#top'
  get "/support" => "homes#support", as: 'support'

  devise_for :users
  # 2 users
  # 7 comments newのviewは要らなければ消す。
  resources :users, only: [:edit,:index, :update, :destroy] do
    resources :comments, only: [:show, :create, :destroy]
  end
  get "user/mypage" => "users#mypage", as: 'mypage'
  get 'user/unsubscribe' => "users#unsubscribe", as: 'unsubscribe'
  get 'user/:id' => "users#others", as: 'others'
  patch 'user/withdrawal' => 'users#withdrawal', as: 'withdrawal'
  # 3 colenders
  resources :calenders, only: [:show, :create, :update, :destroy]
  # 4 lists 7/2編集 create追加
  resources :lists, only: [:create, :destroy, :index]
  # 5 tags newのviewは要らなければ消す。
  resources :tags, only: [:new, :create, :destroy]
  # 6 likes
  resources :likes, only: [:create, :destroy]

  # 8 memos
  resources :memos, only: [:show, :create, :update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
