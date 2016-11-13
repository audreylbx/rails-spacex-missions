Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  root "planets#index"
  resources :planets do
    resources :missions, only: [:new, :create, :edit, :update, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
