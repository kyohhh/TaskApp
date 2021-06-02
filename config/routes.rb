Rails.application.routes.draw do
  # deviseのユーザー機能
  # devise_for :users
  
  # ゲストユーザーは削除できない
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # ゲストユーザー機能
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  # トップページ
  root 'top#index'

  resources :list, only: [:new, :create, :edit, :update, :destroy] do
    resources :card, except: [:index]
  end
  
end
