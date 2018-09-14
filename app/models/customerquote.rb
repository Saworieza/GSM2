class Customerquote < ApplicationRecord
	is_impressionable
  belongs_to :costcenter
  belongs_to :site
  belongs_to :scope

  has_many :customerpos
end
