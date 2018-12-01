class Invoicing < ApplicationRecord
  # belongs_to :paymentvoucher
  belongs_to :contractorinvoice
  belongs_to :user
end
