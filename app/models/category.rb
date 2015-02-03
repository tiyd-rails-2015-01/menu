class Category < ActiveRecord::Base
  has_many :items
  appettizer_image= "appetizer.png"
  dessert_image= "dessert.png"
  entree_image= "entree.jpg"


end
