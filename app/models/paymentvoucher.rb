class Paymentvoucher < ApplicationRecord
  belongs_to :site
  belongs_to :contractorinvoice
end
