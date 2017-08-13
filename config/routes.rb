Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  devise_for :teachers, controllers:{
    registrations: 'teachers/registrations',
    sessions: 'sessions'
  }
  devise_for :students, controllers:{
    registrations: 'students/registrations',
    sessions: 'sessions'
  }

  namespace :students do
    get 'home/index'
    resources :dashboard, only: [:index]
  end

  namespace :teachers do
    get 'home/index'
    resources :dashboard, only: [:index]
  end

  get 'home/index'

end
