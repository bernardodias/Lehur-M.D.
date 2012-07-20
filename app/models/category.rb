class Category < ActiveRecord::Base
  has_many :products
  has_many :subcategory, :through => :products
  
  attr_accessible :name
  
  validates_presence_of :name
end
