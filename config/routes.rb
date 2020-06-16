Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, path: '', path_names: { sign_in: 'login' } , controllers: { sessions: :sessions, passwords: :passwords }

  scope module: :web do
    namespace :settings do
      resources :food_options
    end
  end
end
