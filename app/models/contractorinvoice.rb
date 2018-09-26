class Contractorinvoice < ApplicationRecord
	# is_impressionable
	
  belongs_to :milestone
  belongs_to :stage
  belongs_to :contractor
  belongs_to :contractorquote
  belongs_to :contractorpo

  has_many :invoicings
	has_many :paymentvouchers, through: :invoicings

  validates :number, uniqueness: true
	# validates_presence_of :description

	def amount
	  # @amount = contractorinvoice.contractorpo.amount / contractorinvoice.stage.percentage)
	end
end
