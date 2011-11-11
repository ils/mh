class Article < ActiveRecord::Base
  attr_accessible :headline, :body, :date
  
  validates :headline, :presence => true,
                       :length => { :maximum => 150 }
  validates :body, :presence => true,
                   :length => { :maximum => 5000 }
                   
end
