class Contractorquote < ApplicationRecord
	# is_impressionable
	belongs_to :contractor
  belongs_to :site
  belongs_to :customerpo

  validates :number, uniqueness: true
	# validates_presence_of :description
	has_many :contractorinvoices
end
