class Costcenter < ApplicationRecord
	# is_impressionable
  belongs_to :account
  belongs_to :user

  has_many :customerquotes

  validates :number, uniqueness: true
	# validates_presence_of :description
end
