class Customerpo < ApplicationRecord
	# is_impressionable
  belongs_to :customerquote
  belongs_to :scope

  belongs_to :site

  has_many :contractorquotes
  
  validates :number, uniqueness: true
  # validates_presence_of :description
  
  def customerquote_name
  	customerquote.try(:name)
  end

  def customerquote_name=(name)
  	self.customerquote = Customerquote.find_or_create_by_name(name) if name.present?
  end
end
