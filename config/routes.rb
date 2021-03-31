Rails.application.routes.draw do
	root 'static_pages#home'
	devise_for :users, controllers: { registrations: 'patients/registrations', sessions: 'patients/sessions'}
	devise_for :doctors, controllers: { registrations: 'doctors/registrations', sessions: 'doctors/sessions'}
 	devise_for :clinic_admins, controllers: { registrations: 'clinic_admins/registrations', sessions: 'clinic_admins/sessions'}
 	#devise_for :patients, controllers: { registrations: 'patients/registrations'}
 	#devise_scope :user do
 	#	get 'doctors/sign_up' => 'users/registrations#new_doctor', :as => 'new_doctor_registration'
 	#	post 'doctors' => 'users/registrations#doctor_create', :as => 'doctor_registration'
 	#  	get 'doctors/sign_in' => 'users/sessions#new_doctor', :as => 'new_doctor_session'
 	#   post 'doctors/sign_in' => 'users/sessions#create_doctor', :as => 'create_doctor_session'
 	#end
 	resource :patient_profiles
 	resource :doctor_profiles
 	resource :clinic_admin_profiles
 	resource :comorbidities
 	resource :doctor_schedules
 	resource :clinics
 	resource :relative_people
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end