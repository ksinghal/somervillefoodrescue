class ActionsController < ApplicationController
	before_filter :authenticate_user!

	def take_shift
		@pickup = Pickup.find(params[:pickup_id])
		@pickup.user_id = current_user.id
		@pickup.save
		redirect_to pickups_path
	end

	def leave_shift
		@pickup = Pickup.find(params[:pickup_id])
		if current_user.id == @pickup.user_id
			@pickup.user_id = nil
		end
		@pickup.save
		redirect_to pickups_path
	end
end
