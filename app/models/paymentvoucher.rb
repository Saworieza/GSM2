class Paymentvoucher < ApplicationRecord
	is_impressionable
  belongs_to :site
  belongs_to :contractorinvoice
  
  validates :number, uniqueness: true
	# validates_presence_of :description
end
