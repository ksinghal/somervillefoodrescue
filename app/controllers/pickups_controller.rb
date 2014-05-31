class PickupsController < ApplicationController
	
	def index
		@pickups = Pickup.all
	end

	def show
		@pickup = Pickup.find(params[:id])
	end

end
