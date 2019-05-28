class Property < ApplicationRecord
	belongs_to :landlord
	has_many :reviews
	has_many :tenants, through: :reviews


	validates :address1, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :zip, presence: true
	validates :zip, numericality: true
	validates :zip, length: { maximum: 5,
    too_long: "Zip codes can only be %{count} numbers long" }
    validates :propertytype, presence: true

    def fulladdress
    	"#{address1} #{city} #{state} #{zip}"
    end

    def new
    	@propertty = Property.new(landlord_id: params[:landlord_id])
    end
end
