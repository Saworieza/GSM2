class Customerquote < ApplicationRecord
  belongs_to :costcenter
  belongs_to :site
  belongs_to :scope

  has_many :customerpos
end
