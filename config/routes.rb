Rails.application.routes.draw do
  devise_for :users
  root to:"homes#top"

  resources :post_image, only: [:new,:index,:show]

  get '/homes/about' => 'homes#about',as:'about'#pass:zunda4423
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end