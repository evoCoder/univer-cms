class Page < ActiveRecord::Base
  acts_as_tree
  attr_accessible :parent_id, :name, :content
end


  
