class ClinicsController < ApplicationController
	def index
		@clinics = Clinic.all
	end
	
	def new
		@clinic = Clinic.new
	end

	def create
		@clinic = Clinic.new(clinic_params)
		if @clinic.save
			redirect_to clinic_admin_profiles_path
		end
	end

	private

	def clinic_params
		params.require(:clinic).permit(:name, :phone_number, :email,
		 :start_time, :end_time, :clinic_admin_id)
	end
end