class Opinion < ActiveRecord::Database
  belongs_to :user
  belongs_to :song
end
