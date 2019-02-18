class AuthorsController < ApplicationController
	#Show list of Authors in index
	def index
		@authors=Author.all
	end

	def new
		#
		#
		#
	end

	#
	def show
		@author=Author.find(params[:id])
	end

	#
	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to authors_path
		else
			render 'new'
		end
	end

	#
	def search
		@authors = if params[:term]
			Author.where('Fname LIKE ? or Lname LIKE ?', "%#{params[:term]}", "%#{params[:term]}")
		else
			Author.all
		end
	end

	#
	private
	def author_params
		params.require(:author).permit(:Fname, :Lname, :Bio)
	end
end
