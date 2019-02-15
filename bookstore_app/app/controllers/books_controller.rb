class BooksController < ApplicationController
	#Show list of books in index
	def index
		@books=Book.all
	end

	def new 
 		#@book=Book.new(book_params)
 		#@book.save
 		#redirect_to @book
	end

	#show book with the given parameters
	def show
		@book=Book.find(params[:id])
	end

	#Create book
	def create
		#render plain: params[:book].inspect
		@book=Book.new(book_params)
		@book.save
		redirect_to @book
	end

	#define book parameters
	private
	def book_params
		params.require(:book).permit(:Title, :Price, :Book_id, :Publisher, :Description)
	end
end