class PagesController < ApplicationController
	
	def index
		@pickup_reports = PickupReport.all
		@produce_weight = @pickup_reports.sum(:produce_weight)
		@dairy_weight = @pickup_reports.sum(:dairy_weight)
		@meat_weight = @pickup_reports.sum(:meat_weight)
		@bread_weight = @pickup_reports.sum(:bread_weight)
		@other_weight = @pickup_reports.sum(:other_weight)
		@total_weight = @produce_weight + @dairy_weight + @meat_weight + @bread_weight + @other_weight
	end

	def users_index
		@users = User.all
	end

	def show_user
		@user = User.find(params[:id])
	end

	def destroy_user
		@user = User.find(params[:id])
		if @user.destroy
			redirect_to volunteers_path
		end
	end

end
