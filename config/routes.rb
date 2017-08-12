Rails.application.routes.draw do

  devise_for :users
  namespace :student do
    get 'home/index'
  end

  namespace :tutor do
    get 'home/index'
  end

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

end
