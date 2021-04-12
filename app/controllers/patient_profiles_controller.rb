class PatientProfilesController < ApplicationController
	def new
		@patient_profile = PatientProfile.new
	end

	def show
		@user = current_user
		@patient_profile = PatientProfile.where(user_id: @user.id).first
		@relatives = @user.relatives
	end

	def create
		@patient_profile = PatientProfile.new(patient_profile_params)
		if @patient_profile.save
			if @patient_profile.having_comorbidities
				redirect_to new_comorbidities_path
			else
				redirect_to patient_profiles_path
			end
		else
		end
	end

	private

	def patient_profile_params
		params.require(:patient_profile).permit(:id_proof, :having_comorbidities, :status, :user_id)
	end
end