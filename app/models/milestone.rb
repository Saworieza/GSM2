class Milestone < ApplicationRecord
	# is_impressionable
	belongs_to :user
	has_many :stages, inverse_of: :milestone
  accepts_nested_attributes_for :stages, reject_if: :all_blank, allow_destroy: true

  has_many :invoices
  has_many :customerinvoices


  validates :phase, uniqueness: true
	# validates_presence_of :description
end
