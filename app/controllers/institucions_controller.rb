class InstitucionsController < ApplicationController
	def new
		@institucion = Institucion.new
	end	

	def show
		@institucion = Institucion.find(params[:id])
	end

	def index
		@institucions = Institucion.all
	end	

	def create
  		@institucion = Institucion.new(params[:institucion].permit(:name, :direction))
 		#@institucion.user_id = current_user.id
  		if @institucion.save
    		redirect_to @institucion
  		else
    		render 'new'
  		end
	end

	def edit
  		@institucion = Institucion.find(params[:id])
	end

	def update
  		@institucion = Institucion.find(params[:id])
 
  		if @institucion.update(institucion_params)
    		redirect_to @institucion
  		else
    		render 'edit'
  		end
	end

	def destroy
		@institucion = Institucion.find(params[:id])
		@institucion.destroy

		redirect_to institucions_path
	end
	private
		def institucion_params
			params.require(:institucion).permit(:name, :direction)
		end
end
