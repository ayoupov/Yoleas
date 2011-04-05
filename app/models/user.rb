class User < ActiveRecord::Base
  has_many :posts, :dependent => :destroy

  validates :identifier_url, :email, :presence => true
  validates :first_name, :last_name, :presence => true, :on => :update

  accepts_nested_attributes_for :posts, :allow_destroy => true

  attr_protected :admin

  def full_name
    full_name = first_name + " " + last_name
  end
end
