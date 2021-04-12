class RemoveReferenceOfPatientReportUser < ActiveRecord::Migration[6.1]
  def change
  	remove_reference :patient_reports, :user
  end
end
