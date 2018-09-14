class Contractorpo < ApplicationRecord
  belongs_to :contractorquote

  has_many :contractorinvoices
end
