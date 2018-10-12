class Contractorpo < ApplicationRecord
	# is_impressionable
  belongs_to :contractorquote
  belongs_to :user

  has_many :contractorinvoices

  validates :number, uniqueness: true
	# validates_presence_of :description
end
