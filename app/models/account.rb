class Account < ApplicationRecord
	is_impressionable
	has_many :costcenters
end
