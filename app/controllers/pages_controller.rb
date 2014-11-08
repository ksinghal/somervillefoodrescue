class PagesController < ApplicationController
	
	def index
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
