Rails.application.routes.draw do

  resources :time_data

  root 'welcome#index'

end
