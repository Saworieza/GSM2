class Costcenter < ApplicationRecord
	# is_impressionable
  belongs_to :account

  has_many :customerquotes

  validates :number, uniqueness: true
	# validates_presence_of :description
end
