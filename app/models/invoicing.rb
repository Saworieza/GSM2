class Invoicing < ApplicationRecord
  belongs_to :paymentvoucher
  belongs_to :contractorinvoice
end
