class Song < ActiveRecord::Base
  validates :title, :presence => true
  has_many :opinions
  has_many :users, :through => :opinions
end
