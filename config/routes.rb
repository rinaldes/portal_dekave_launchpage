Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'subs#index'

  get 'terimakasih', :to => 'subs#selesai'
  resources :subs

end
