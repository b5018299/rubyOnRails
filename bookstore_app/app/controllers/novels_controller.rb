class NovelsController < ApplicationController
	def index
		@novels=Novel.all
	end

	def new
		#
		#
		#
	end

	#
	def show
		@novel=Novel.find(params[:id])
	end

	#
	def create
		#render plain: params[:novel].inspect

		@novel = Novel.new(novel_params)
		if @novel.save
			redirect_to novel_index_path
		else
			render 'new'
		end
	end

	#Edit novel
	def edit
		@novel = Novel.find(params[:id])
	end

	def update
		@novel = Novel.find(params[:id])
		if @novel.update(novel_params)
			redirect_to @novel
		else
			render 'edit'
		end
	end

	def destroy
		@novel = Novel.find(params[:id])
		@novel.destroy
		redirect_to novel_index_path
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