class ReviewsController < ApplicationController
	
	def new
		if params[:property_id]
			@property = Property.find(params[:property_id])
			if @property.nil?
				redirect_to properties_path
			else
				@property
				@review = Review.new(:property=>@property)
			end
		else
			redirect_to reviews_path
		end
	end

	def create
		@review = Review.new(review_params)
		@review.save
		redirect_to properties_path
	end

	def index
		if params[:property_id]
			@property = Property.find(params[:property_id])
			if @property.nil?
				redirect_to properties_path
			else
				@reviews = @property.reviews
			end
		else
			@reviews = Review.all
		end
	end

	private

	def review_params
		params.require(:review).permit(:contents, :property_id)
	end
end
