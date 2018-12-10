class ContractorinvoicesPayment < ApplicationRecord
	belongs_to :payment
	belongs_to :contractorinvoice
end
