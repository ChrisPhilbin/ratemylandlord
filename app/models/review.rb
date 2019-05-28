class Review < ApplicationRecord
	# belongs_to :tenant
	belongs_to :property
	

	validates :contents, :presence => true

end
