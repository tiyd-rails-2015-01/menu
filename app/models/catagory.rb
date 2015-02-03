class Catagory < ActiveRecord::Base
  has_many :items
 
#  validates: presence

  def new
  end

  def all
  end



end
