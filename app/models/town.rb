class Town < ApplicationRecord
	is_impressionable
  belongs_to :region

  has_many :sites

  validates :name, uniqueness: true
	# validates_presence_of :description
end
