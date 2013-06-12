class Size < ActiveRecord::Base
  has_many :products

  attr_accessible :size


end
