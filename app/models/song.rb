class Song < ActiveRecord::Database
  validates :title, presence => true
  has_many :opinions
  has_many :users, :through => :opinions
end
