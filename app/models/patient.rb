class Patient < ApplicationRecord
	has_many :appointments
	has_many :docteurs, through: :appointments
	belongs_to :city
end
