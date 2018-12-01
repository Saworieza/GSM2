class Payment < ApplicationRecord
  belongs_to :contractor
  has_and_belongs_to_many :contractorinvoices
end
