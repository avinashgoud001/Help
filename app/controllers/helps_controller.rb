class HelpsController < ApplicationController
	def index
		@helps = Need.all
	end
	def new
		@need = Need.new
	end
	def create
		need = Need.create(need_params)
    	if @need.save
    		redirect_to helps_path
    	else
    		render "new"
    	end
	end
	def show
		@need = Need.find(params[:id])
	end
	def edit
		@need = Need.find(params[:id])
	end
	def update
		@need = Need.find(params[:id])

    	if @need.update_attributes(need_params)
    		redirect_to helps_path 
    	else
    		render "edit"
    	end
	end
	def destroy
	end
	 def need_params
    	params.require(:need).permit(:Gender, :Age, :health)
    end
end
