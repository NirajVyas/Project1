class Comment < ActiveRecord::Base
  attr_accessible :comment

  belongs_to :song

end
