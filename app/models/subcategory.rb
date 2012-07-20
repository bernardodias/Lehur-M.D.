class Subcategory < ActiveRecord::Base
  has_many :products
  has_many :category, :through => :products
  
  attr_accessible :name
  
  validates_presence_of :name
end
