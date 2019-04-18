class Order < ApplicationRecord

	enum status: [:ready, :production, :closing, :sent]

	belongs_to :batch, optional: true

	validates :reference, presence: true
	validates :purchase_channel, presence: true
	validates :client_name, presence: true
	validates :address, presence: true
	validates :delivery_service, presence: true
	validates :total_value, presence: true
	validates :status, presence: true

	scope :filtering_by_client, ->(clientName) { where("client_name like ?", clientName) if clientName.present? }

end
