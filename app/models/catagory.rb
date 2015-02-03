class Catagory < ActiveRecord::Base
#  validates: presence

  def new
  end

  def all
  end


  has_many :items

end
