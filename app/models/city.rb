class City < ApplicationRecord
	has_many :docteurs
	has_many :patients
	has_many :appointments
end
