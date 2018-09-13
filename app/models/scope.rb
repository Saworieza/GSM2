class Scope < ApplicationRecord
	has_many :sites
	has_many :customerpos
	has_many :customerquotes
end
