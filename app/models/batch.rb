class Batch < ApplicationRecord

	validates :reference, presence: true
	validates :purchaseChannel, presence: true
	has_many :orders
	
end
