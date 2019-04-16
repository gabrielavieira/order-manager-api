class Order < ApplicationRecord

	enum status: [:ready, :production, :closing, :sent]

	belongs_to :batch, optional: true

	validates :reference, presence: true
	validates :purchaseChannel, presence: true
	validates :clientName, presence: true
	validates :address, presence: true
	validates :deliveryService, presence: true
	validates :totalValue, presence: true
	validates :status, presence: true

end
