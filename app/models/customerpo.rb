class Customerpo < ApplicationRecord
  belongs_to :customerquote
  belongs_to :scope

  has_many :sites
  
  def customerquote_name
  	customerquote.try(:name)
  end

  def customerquote_name=(name)
  	self.customerquote = Customerquote.find_or_create_by_name(name) if name.present?
  end
end
