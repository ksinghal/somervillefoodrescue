class PickupReportsController < ApplicationController

	def show
		@pickup_report = PickupReport.find(params[:id])
	end

	def index
		@pickup_reports = PickupReport.all
		@pickup_reports = @pickup_reports.paginate(:page => params[:page], :per_page => 10)
	end

	def new
		if user_signed_in?
			@donors = Donor.all
			@recipients = Recipient.all
			@volunteers = User.all
			@report = PickupReport.new
			@report.pickup_id = params[:pickup_id]
			@report.save
		else
			flash[:notice] = "Please sign in before creating a pickup report."
			redirect_to action: :index
		end
	end

	def update
		@pickup_report = PickupReport.find(params[:id])
		@pickup_report.update_attributes(pickup_report_params)

		redirect_to action: :index
	end

	private

	def pickup_report_params
		params.require(:pickup_report).permit(:donor_id, :recipient_id, :user_id, :produce_weight, :dairy_weight, :meat_weight, :bread_weight, :other_weight)
	end
end
