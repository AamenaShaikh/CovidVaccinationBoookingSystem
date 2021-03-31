class RemoveReferenceOfDoctorToDoctorSchedule < ActiveRecord::Migration[6.1]
  def change
  	remove_reference :doctor_schedules, :doctor_profile
  end
end
