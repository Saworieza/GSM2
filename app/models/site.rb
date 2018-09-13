class Site < ApplicationRecord
  belongs_to :status
  belongs_to :scope
  belongs_to :town
  belongs_to :region
  
  has_many :customerpo
  has_many :customerquote
end
