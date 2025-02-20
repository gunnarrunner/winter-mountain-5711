Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors, only: [:show]
  resources :hospitals, only: [:show]
  delete 'doctors/:patients_id', to: 'doctor_patients#destroy'
end
