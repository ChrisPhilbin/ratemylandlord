class ReviewsController < ApplicationController
	
	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
	end

	def index
		if params[:property_id]
			@property = Property.find(params[:property_id])
			if @property.nil?
				redirect_to properties_path
			else
				@reviews = @property.revies
			end
		else
			@reviews = Review.all
		end
	end

	private

	def review_params
		params.require(:review).permit(:contents)
	end
end
