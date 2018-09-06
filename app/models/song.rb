class Song < ActiveRecord::Base
  validates :title, :presence => true
  belongs_to :user

  scope(:not_like, ->do
    where({:like => false})
  end)
  

  def name_with_artist
    "#{self.title} - #{self.artist}"
  end

end
