class User < ActiveRecord::Base
  has_many :posts, :dependent => :destroy

  validates :identifier_url, :email, :presence => true
  validates :first_name, :last_name, :presence => true, :on => :update

  attr_protected :admin
end
