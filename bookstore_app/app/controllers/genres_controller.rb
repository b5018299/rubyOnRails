class GenresController < ApplicationController
	def index
		@genres=Genre.all
	end

	def new
		#
		#
		#
	end

	#
	def show
		@genre=Genre.find(params[:id])
	end

	#
	def create
		@genre = Genre.new(genre_params)
		if @genre.save
			redirect_to genres_path
		else
			render 'new'
		end
	end

	#
	private
	def genre_params
		params.require(:genre).permit(:Name)
	end
end
