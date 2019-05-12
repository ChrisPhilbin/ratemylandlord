class PropertiesController < ApplicationController

	def index
		if params[:landlord_id]
			@landlord = Landlord.find(params[:landlord_id])
			if @landlord.nil?
				redirect_to landlords_path
			else
				@properties = @landlord.properties
			end
		else
			@properties = Property.all
		end
	end

	def new
		@landlord = Landlord.find(params[:landlord_id])
		@property = @landlord.properties.build(landlord_id: @landlord.id)
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
		params.require(:property).permit(:address1, :city, :state, :zip, :propertytype, :landlord_id)
	end
end
