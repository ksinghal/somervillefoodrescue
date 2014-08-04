class RecipientsController < ApplicationController
	
	def index
		@recipients = Recipient.all
	end

	def show
		@recipient = Recipient.find(params[:id])
	end

	def new
		@recipient = Recipient.new
	end

	def create
		@recipient = Recipient.create(recipient_params)

		redirect_to action: :index
	end

	def edit
		@recipient = Recipient.find(params[:id])
	end

	def destroy
		@recipient = Recipient.find(params[:id])
		@recipient.destroy

		@pickups_for_recipient = Pickup.where(recipient_id: @recipient.id)
		@pickups_for_recipient.destroy_all

		redirect_to action: :index
	end

	private

	def recipient_params
		params.require(:recipient).permit(:name, :address, :email, :phone_number, :instructions)
	end

end
