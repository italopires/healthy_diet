Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, path: '', path_names: { sign_in: 'login' } , controllers: { sessions: :sessions, registrations: :registrations }
  devise_scope :user do
    get 'sign_out', to: 'sessions#destroy'
  end
  root :to => 'web/diets#index'

  scope module: :web do
    resources :diets
    namespace :settings do
      resources :food_options
    end
  end
end
