class Contractor < ApplicationRecord
  belongs_to :status

  has_many :contractorquotes
end
