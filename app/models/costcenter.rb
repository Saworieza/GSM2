class Costcenter < ApplicationRecord
	is_impressionable
  belongs_to :account

  has_many :customerquotes
end
