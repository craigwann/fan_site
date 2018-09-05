class User < ActiveRecord::Base
  validates :name, :presence => true
  has_many :opinions
  has_many :songs, :through => :opinions
end
