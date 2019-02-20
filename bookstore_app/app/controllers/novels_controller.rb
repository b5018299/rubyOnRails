class NovelsController < ApplicationController

	before_action :authorize, :only => [ :create]

	def index
		@novels 	= Novel.all
		@genres 	= Genre.all
	end

	#
	def create
		#render plain: params[:novel].inspect

		#@novel = Novel.new(novel_params)
		#if @novel.save
		#	flash[:notice] = 'Novel Added'
		#	redirect_to novels_path
		#else
		#	render 'new'
		#end
		
		@novel = Novel.new(novel_params)
		if @novel.save
			redirect_to novels_path, notice: "You have successfully created a novel"
		else
			redirect_to novels_path, alert: "You will need to be signed in to create a novel"
		end
	end

	def update
		@novel = Novel.find(params[:id])
		if @novel.update(novel_params)
			flash[:notice] = 'Novel details have been updated :)'
			redirect_to @novel
		else
			render 'edit'
		end
	end

	def new
		@novel = Novel.new
		@genre = Genre.new
		@author = Author.new
		@publisher = Publisher.new
	end

	#
	def show
		@novel = Novel.find(params[:id])
		@genres = Genre.all
	end

	#Edit novel
	def edit
		@novel = Novel.find(params[:id])
	end

	def destroy
		@novel = Novel.find(params[:id])
		@novel.destroy
		redirect_to novels_path
	end

	def search
		@novels = if params[:term]
			Novel.where('Title LIKE ? or Format LIKE ?', "%#{params[:term]}", "%#{params[:term]}")
		else
			Novel.all
		end
	end

	#
	private
	def novel_params
		params.require(:novel).permit(:Title, :isbn, :Format, :Genre_id, :Publisher_id, :Author_id, :Price, :Pages, :Publication, :Description)
	end	
end