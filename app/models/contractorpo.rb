class Contractorpo < ApplicationRecord
	is_impressionable
  belongs_to :contractorquote

  has_many :contractorinvoices
end
