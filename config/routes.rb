Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :time_data, only: [:index, :create]

  root 'welcome#index'

end