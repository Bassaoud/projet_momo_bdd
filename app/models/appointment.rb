class Appointment < ApplicationRecord
	belongs_to :docteur
	belongs_to :patient
	belongs_to :city
end
