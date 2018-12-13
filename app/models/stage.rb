class Stage < ApplicationRecord
	# is_impressionable
  belongs_to :user
  belongs_to :milestone, inverse_of: :stages
end
