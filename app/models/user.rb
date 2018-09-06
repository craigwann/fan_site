class User < ActiveRecord::Base
  validates :name, :presence => true
  has_many :songs

  scope :most_songs, -> {(
    select("users.id, users.name, count(songs.id) as songs_count")
      .joins(:songs)
      .group("users.id")
      .order("songs_count DESC")
      .limit(2)
    )}
  end

  # scope :search, -> (name_parameter) { where("name like ?", "%#{name_parameter}%")}

# end
