class Stage < ApplicationRecord
	is_impressionable
  belongs_to :milestone
end
