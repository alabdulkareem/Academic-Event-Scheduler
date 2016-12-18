Rails.application.routes.draw do
  resources :selected_times
  resources :possible_days
  resources :events do
  	get 'timetable'
  end
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'events#index'
end
