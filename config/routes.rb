Rails.application.routes.draw do
     devise_for :users, controllers: { registrations: "users/registrations" }
    resources :questions
    resources :workouts
    
  authenticated :user do
    root to: 'questions#index', as: :authenticated_root
  end
   
    root to: 'welcome#index'
end
