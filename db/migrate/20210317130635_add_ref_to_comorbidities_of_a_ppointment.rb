class AddRefToComorbiditiesOfAPpointment < ActiveRecord::Migration[6.1]
  def change
  	add_reference :comorbidities, :appointment
  end
end
