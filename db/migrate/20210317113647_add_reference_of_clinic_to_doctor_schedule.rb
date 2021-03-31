class AddReferenceOfClinicToDoctorSchedule < ActiveRecord::Migration[6.1]
  def change
  	add_reference :doctor_schedules, :clinic
  end
end
