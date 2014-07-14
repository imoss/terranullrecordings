Terranullrecordings::Application.routes.draw do
  resources :news_items, only: :index, path: '/news'
  resources :podcasts, only: :index
  resources :releases, only: [:index, :show]

  root :to => 'homepage#index'
end
