class Fact < ActiveRecord::Base
  
  belongs_to :cuisine
  validates :content, :uniqueness => true

end
