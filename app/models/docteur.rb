class Docteur < ApplicationRecord
	has_many :appointments
	has_many :patients, through: :appointments
	belongs_to :city
	has_many :competences
	has_many :specialties, through: :competences
end
