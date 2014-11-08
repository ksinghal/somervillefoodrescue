class RegistrationsController < Devise::RegistrationsController
	after_filter :sanitize_phone_number 

	protected

	def sanitize_phone_number
		current_user.phone_number = current_user.phone_number.tr('^0-9', '')
		current_user.save
	end
end