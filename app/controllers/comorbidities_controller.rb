class ComorbiditiesController < ApplicationController
	def new
		@comorbidity = Comorbidity.new
	end

	def create
		@comorbidity = Comorbidity.new(comorbidity_params)
		@comorbidity.image.attach(params[:comorbidity][:report_file])
		if @comorbidity.save
			redirect_to patient_profiles_path
		else
		end
	end

	private

	def comorbidity_params
		params.require(:comorbidity).permit(:patient_id, 
			:appointment_id, :disease_description, :report_file, :suggestion_by_doctor)
	end
end
