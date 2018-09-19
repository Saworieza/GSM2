class Contractorinvoice < ApplicationRecord
	is_impressionable
	
  belongs_to :milestone
  belongs_to :stage
  belongs_to :site
  belongs_to :contractorpo

  validates :number, uniqueness: true
	# validates_presence_of :description
end
