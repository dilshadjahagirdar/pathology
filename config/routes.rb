Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Users
  post '/authlogin' => 'user#check'
  post '/new_user' => 'user#create'

  # Patients
  get '/get_patients' => 'patient#index'
  post '/new_patient' => 'patient#create'
end
