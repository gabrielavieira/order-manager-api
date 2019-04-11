class Batch < ApplicationRecord
	validates :reference, preserce: true
	validates :purchaseChannel, presence: true
end
