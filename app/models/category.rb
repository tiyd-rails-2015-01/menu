class Category < ActiveRecord::Base

  def self.list_categories
    categories = []

    self.all.each do |i|
        categories << i
    end

    return categories
  end

  def self.get_description_at_key( key_value )
    description = ""

    self.all.each do |i|
      if i.id == key_value
        description = i.description
      end
    end

    return description
  end

  def self.get_image_at_key( key_value )
    image = ""

    self.all.each do |i|
      if i.id == key_value
        image = i.image
      end
    end

    return image
  end

  def self.get_description_key_pairs
    pairs = []

    self.all.each do |i|
      pairs << [ i.description,i.id ]
    end

    return pairs
  end

end
