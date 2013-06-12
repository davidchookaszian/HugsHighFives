class Product < ActiveRecord::Base

  has_many :sizes

  attr_accessible :description, :detail, :price, :title


    validates :title, presence: true, uniqueness: true

end
