class Contractorinvoice < ApplicationRecord
	# is_impressionable
	
  belongs_to :milestone
  belongs_to :stage
  belongs_to :contractor
  belongs_to :contractorquote
  belongs_to :contractorpo

  belongs_to :user

  has_many :invoicings
	has_and_belongs_to_many :payments

  validates :number, uniqueness: true
	# validates_presence_of :description

	def amount
	  # @amount = contractorinvoice.contractorpo.amount / contractorinvoice.stage.percentage)
	end

  scope :unpaid, -> { where(paid: false)}
end