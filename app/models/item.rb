class Item < ActiveRecord::Base
  belongs_to :catagory_id
  accepts_nested_attributes_for :catagory_id

  def new
  end

  def edit
  end



end
