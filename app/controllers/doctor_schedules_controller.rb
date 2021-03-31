class DoctorSchedulesController < ApplicationController
	def new
		@doctor_schedule = DoctorSchedule.new
	end

	def create
		@doctor_schedule = DoctorSchedule.new(doctor_schedule_params)
		doctor_id = @doctor_schedule.doctor_id
		@doctor = User.where(id: doctor_id).first
		clinic_id = @doctor_schedule.clinic_id
		@clinic = Clinic.where(id: clinic_id).first
		@doctor.clinics << @clinic
		if @doctor_schedule.save
			redirect_to doctor_profiles_path
		else
		end
	end

	private

	def doctor_schedule_params
		params.require(:doctor_schedule).permit(:date, :start_time, :end_time, 
			:doctor_id, :created_by, :clinic_id, :status)
	end
end
