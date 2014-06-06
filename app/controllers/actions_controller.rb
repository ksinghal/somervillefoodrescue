class ActionsController < ApplicationController
	before_filter :authenticate_user!

	def take_shift
		@pickup = Pickup.find(params[:pickup_id])
		if @pickup.user_id == nil
			@pickup.user_id = current_user.id
			@pickup.save
		end
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

	def make_admin
		@user = User.find(params[:user_id])
		if current_user.admin?
			@user.admin = true
		end
		@user.save
		redirect_to volunteers_path
	end

	def demote_admin
		@user = User.find(params[:user_id])
		if current_user.admin?
			@user.admin = false
		end
		@user.save
		redirect_to volunteers_path
	end

end
