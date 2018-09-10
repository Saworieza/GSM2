class Costcenter < ApplicationRecord
  belongs_to :account

  has_many :customerquotes
end
