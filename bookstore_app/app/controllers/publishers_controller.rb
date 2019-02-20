class PublishersController < ApplicationController
	def index
		@publishers=Publisher.all
	end

	def new
		#
	end

	#
	def show
		@publisher=Publisher.find(params[:id])
	end

	#
	def create
		#render plain: params[:publisher].inspect

		@publisher = Publisher.new(publisher_params)
		if @publisher.save
			redirect_to publishers_path
		else
			render 'new'
		end
	end

	#
	private
	def publisher_params
		params.require(:publisher).permit(:Name, :Country)
	end
end