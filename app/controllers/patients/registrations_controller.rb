# frozen_string_literal: true

class Patients::RegistrationsController < Devise::RegistrationsController
   before_action :configure_permitted_parameters
   before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  #def new
  #   super
  #end

  # POST /resource
  def create
    params[:user] = params[:user]&.merge(type: 'Patient')
    super
  end

 # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    params[:user] = params[:user]&.merge(type: 'Patient')
    super
  end

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :first_name,
                                  :last_name, :phone_number,
                                  :aadhar_number, :gender, :age,
                                  :date_of_birth, :type, :is_relative) }
  end

  def configure_account_update_params
     devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :first_name,
                                  :password, :password_confirmation, :current_password,
                                  :last_name, :phone_number,
                                  :aadhar_number, :gender, :age,
                                  :date_of_birth, :type) }
  end
    
  def after_sign_up_path_for(resource)
    new_user_session_path
  end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
