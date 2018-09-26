class Paymentvoucher < ApplicationRecord
	# is_impressionable
  # belongs_to :site
  # belongs_to :contractorinvoice

  has_many :invoicings
  has_many :contractorinvoices, through: :invoicings
  
  validates :number, uniqueness: true
	# validates_presence_of :description
end
