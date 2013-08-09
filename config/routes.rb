Terranullrecordings::Application.routes.draw do
  resources :about, only: :index
  resources :news_items, only: [:index, :show], path: '/news'
  resources :podcasts, only: :index
  resources :releases, only: [:index, :show]
  resources :welcome, only: :index

  root :to => 'homepage#index'
end
