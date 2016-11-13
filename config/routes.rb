Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  root "planets#index"
  resources :planets, only: [:index, :show, :new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
