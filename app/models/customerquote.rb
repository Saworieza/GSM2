class Customerquote < ApplicationRecord
	is_impressionable
  belongs_to :costcenter
  belongs_to :site
  belongs_to :scope

  has_many :customerpos
  has_many :invoices

  validates :name, uniqueness: true
	# validates_presence_of :description
end
