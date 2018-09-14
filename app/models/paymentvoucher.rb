class Paymentvoucher < ApplicationRecord
	is_impressionable
  belongs_to :site
  belongs_to :contractorinvoice
end
