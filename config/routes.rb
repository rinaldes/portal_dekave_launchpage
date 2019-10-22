Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'subs#index'

  get 'terimakasih', :to => 'subs#selesai'
  resources :subs

   # error pages
   %w( 404 422 500 503 ).each do |code|
    get 'error', :to => 'subs#index'
  end
end
