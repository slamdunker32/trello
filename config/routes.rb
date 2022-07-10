Rails.application.routes.draw do
  devise_for :users
  root 'top#index'

  resources :list, only: %i(new create edit update destroy) do
    # この行を編集する
    resources :card, only: %i(new create show edit update destroy)
  end
end
