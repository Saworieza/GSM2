class Site < ApplicationRecord
  is_impressionable
  belongs_to :status
  belongs_to :scope
  belongs_to :town
  belongs_to :region
    

  has_many :customerpo
  has_many :customerquote
  has_many :contractorinvoices
  has_many :contracts

  validates :name, uniqueness: true
  # validates_presence_of :description

  has_many :contractors
  def name_with_initial
    "#{name}"
  end
end
