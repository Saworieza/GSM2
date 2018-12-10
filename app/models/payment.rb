class Payment < ApplicationRecord
  belongs_to :contractor
  has_many :contractorinvoices_payment
  has_many :contractorinvoices, through:  :contractorinvoices_payment
  # has_and_belongs_to_many :contractorinvoices
end
