class Customer < ApplicationRecord
	validates :full_name, presence: true
	validates :full_name, length: { in: 3..30 }
	validates :phone_number, format: { with: /(?:\+?|\b)[0-9]{10}\b/ }
	
	belongs_to :province # The customers table has a province_id/foreignKey
end
