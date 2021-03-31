class RelativePeopleController < ApplicationController
	def new
		@relative_people = User.new
	end

	def create
		@relative_people = User.new(user_params.merge(type: 'Patient'))
		if @relative_people.save
			redirect_to patient_profiles_path
		else
			redirect_to patient_profiles_path
		end
	end

	private

	def user_params
		params.require(:relative_people).permit(:password, :password_confirmation, :first_name,
                                  :last_name, :phone_number,
                                  :aadhar_number, :gender, :age,
                                  :date_of_birth, :type, :is_relative, :parent_id)
	end
end
