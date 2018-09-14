class Scope < ApplicationRecord
	is_impressionable
	has_many :sites
	has_many :customerpos
	has_many :customerquotes
end
