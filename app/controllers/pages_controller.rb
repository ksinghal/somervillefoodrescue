class PagesController < ApplicationController
	
	def index
	end

	def users_index
		@users = User.all
	end

	def show_user
		@user = User.find(:id)
	end

end
