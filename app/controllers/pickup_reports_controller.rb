class PickupReportsController < ApplicationController	
	def index
		@reports = PickupReport.all
	end

	def show
		@report = PickupReport.find(params[:id])
	end

	def index
		@reports = PickupReport.all
	end

	def new
		if user_signed_in?
			@donors = Donor.all
			@recipients = Recipient.all
			@volunteers = User.all
			@report = PickupReport.new
		else
			flash[:notice] = "Please sign in before creating a report."
			redirect_to action: :index
		end
	end

	def create
		@report = PickupReport.create(pickup_report_params)

		redirect_to action: :index
	end

	private

	def pickup_report_params
		params.require(:pickup_report).permit(:donor_id, :recipient_id, :user_id, :produce_weight, :dairy_weight, :meat_weight, :bread_weight, :other_weight)
	end
end
