class DonorsController < ApplicationController
	
	def index
		@donors = Donor.all.order('created_at ASC')
	end

	def show
		@donor = Donor.find(params[:id])
	end

	def new
		@donor = Donor.new
	end

	def create
		@donor = Donor.create(donor_params)

		redirect_to action: :index
	end

	def edit
		@donor = Donor.find(params[:id])
	end

	def destroy
		@donor = Donor.find(params[:id])
		@donor.destroy

		@pickups_for_donor = Pickup.where(donor_id: @donor.id)
		@pickups_for_donor.destroy_all

		redirect_to action: :index
	end

	private

	def donor_params
		params.require(:donor).permit(:name, :address, :email, :phone_number, :instructions)
	end

end
