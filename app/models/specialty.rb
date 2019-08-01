class Specialty < ApplicationRecord
has_many :competences
has_many :docteurs, through: :competences

end
