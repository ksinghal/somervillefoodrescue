class PickupsController < ApplicationController
	
	def index
		@pickups = Pickup.all.order('donor_window_start ASC')
	end

	def new
		@pickup = Pickup.new
		@donors = Donor.all
		@recipients = Recipient.all
	end

	def create
		@pickup = Pickup.create(pickup_params)
		
		redirect_to action: :index
	end

	def edit
		@pickup = Pickup.find(params[:id])
		@donors = Donor.all
		@recipients = Recipient.all
		@current_donor = Donor.find(params[:donor])
		@current_recipient = Recipient.find(params[:recipient])
		@current_day_of_week = params[:day_of_week]
	end

	def update
		@pickup = Pickup.find(params[:id])
		@pickup.update_attributes(pickup_params)

		redirect_to action: :index
	end

	def destroy
		@pickup = Pickup.find(params[:id])
		@pickup.destroy

		redirect_to action: :index
	end

	private

	def pickup_params
		params.require(:pickup).permit(:donor_window_start, :donor_window_end, :recipient_window_start, :recipient_window_end, :donor_id, :recipient_id, :instructions, :day_of_week)
	end

end
