class PickupReportsController < ApplicationController
	
	def index
		@reports = PickupReport.all
	end

	def show
		@report = PickupReport.find(params[:id])
	end

end
