class Milestone < ApplicationRecord
	has_many :stages, inverse_of: :milestone
  accepts_nested_attributes_for :stages, reject_if: :all_blank, allow_destroy: true
end
