Terranullrecordings::Application.routes.draw do
  devise_for :admins
  resources :news_items, only: :index, path: '/news'
  resources :podcasts, only: :index
  resources :releases, only: [:index, :show]

  namespace :admin do
    resources :news_items
    resources :podcasts
    resources :releases

    root to: 'overview#index'
  end

  root to: 'homepage#index'
end
