class Post < ActiveRecord::Base

  belongs_to :user

#  validates :user_id, :presence => true

  validates :title, :presence => true,
                    :length => { :minimum => 2 }
  validates :content, :presence => true,
                    :length => { :minimum => 5 }

  attr_accessor :tags


end
