class PropertiesController < ApplicationController

	def new
		@property = Property.new
	end

	def show
		@property = Property.find(params[:id])
	end

	def create
		@property = Property.new(property_params)
		if @property.save
			redirect_to @property
		else
			render :new
		end
	end

	def edit
		@property = Property.find(params[:id])
	end

	private

	def property_params
		params.require(:property).permit(:address1, :address2, :city, :state, :zip, :propertytype)
	end
end
