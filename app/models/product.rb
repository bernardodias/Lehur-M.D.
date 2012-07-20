class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :subcategory
  
  attr_accessible :description, :dimension, :maker, :name, :category_id, :subcategory_id, :avatar
  
  validates_presence_of :name, :category_id
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  Paperclip.options[:command_path] = "/usr/local/bin"
end
