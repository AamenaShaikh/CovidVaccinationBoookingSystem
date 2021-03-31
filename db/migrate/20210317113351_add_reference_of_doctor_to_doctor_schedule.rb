class AddReferenceOfDoctorToDoctorSchedule < ActiveRecord::Migration[6.1]
  def change
  	add_reference :doctor_schedules, :doctor_profile
  end
end
