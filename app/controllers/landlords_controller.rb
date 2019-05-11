class LandlordsController < ApplicationController

	def new
		@landlord = Landlord.new
		@property = @landlord.properties.build
	end

	def show
		@landlord = Landlord.find(params[:id])
	end

	def create
		@landlord = Landlord.new(landlord_params)
		if @landlord.save
			redirect_to @landlord
		else
			render :new
		end
	end

	def edit
		@landlord = Landlord.find(params[:id])
	end

	private

	def landlord_params
		params.require(:landlord).permit(:firstname, :lastname)
	end
end
