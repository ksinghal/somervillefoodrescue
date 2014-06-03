class PickupsController < ApplicationController
	
	def index
		@pickups = Pickup.all.order('donor_window_start ASC')
	end

	def show
		@pickup = Pickup.find(params[:id])
	end

end
