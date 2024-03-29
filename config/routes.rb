Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, path: '', path_names: { sign_in: 'login' } , controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  devise_scope :user do
    get 'sign_out', to: 'users/sessions#destroy'
  end
  root :to => 'web/dashboards#index'

  scope module: :web do
    resources :dashboards, only: :index
    resources :diets, except: :show do
      resources :weight_movements, except: :show
    end
    namespace :settings do
      resources :food_options, except: :show
    end
  end
end
