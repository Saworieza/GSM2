class Invoice < ApplicationRecord
	# is_impressionable
  # belongs_to :status
  # belongs_to :scope
  belongs_to :customerpo
  belongs_to :customerquote
  # belongs_to :site
  belongs_to :milestone
  belongs_to :stage

  validates :number, uniqueness: true
	# validates_presence_of :description
end
