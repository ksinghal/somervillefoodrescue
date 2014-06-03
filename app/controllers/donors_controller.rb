class DonorsController < ApplicationController
	
	def index
		@donors = Donor.all.order('created_at ASC')
	end

	def show
		@donor = Donor.find(params[:id])
	end

end
