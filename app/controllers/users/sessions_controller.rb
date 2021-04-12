# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  #skip_before_action :verify_authenticity_token, :only => :create_doctor
  #before_action :configure_sign_in_params, only: [:create]
  #after_action :patient_profile, only: [:create]
  # GET /resource/sign_in
  def new
    super
  end

  def destroy
    super
  end

 # def new_doctor
  #  self.resource = resource_class.new(sign_in_params)
  #  clean_up_passwords(resource)
  #  yield resource if block_given?
   # respond_with(resource, serialize_options(resource))
  #end

  # POST /resource/sign_in
  def create
    super
  end

  #def create_doctor
   # self.resource = warden.authenticate!(auth_options)
  #  set_flash_message!(:notice, :signed_in)
   # sign_in(resource_name, resource)
   # yield resource if block_given?
   # respond_with resource, location: after_sign_in_path_for(resource)
  #end

  protected

  def after_sign_in_path_for(resource)
    if resource.has_role?(:patient)
      if resource.patient_profile
        new_user_registration_path
      else
        new_patient_profiles_path
      end
    elsif resource.has_role?(:doctor)
      new_doctor_schedules_path
    end
  end
  # DELETE /resource/sign_out
  
  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
