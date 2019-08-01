class Competence < ApplicationRecord
	belongs_to :docteur
	belongs_to :specialty
end
