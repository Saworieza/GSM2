class Contractor < ApplicationRecord
	# is_impressionable
  belongs_to :status
  # belongs_to :site
  # accepts_nested_attributes_for :sites, reject_if: :all_blank, allow_destroy: true

  has_many :contractorquotes
  has_many :contracts
  has_many :contractorinvoices

  belongs_to :user

  validates :name, uniqueness: true
	# validates_presence_of :description
end
