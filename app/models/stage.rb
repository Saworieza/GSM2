class Stage < ApplicationRecord
	# is_impressionable
  belongs_to :milestone
  belongs_to :user
end
