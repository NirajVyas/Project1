class Song < ActiveRecord::Base
  attr_accessible :title, :year, :filename

  mount_uploader :filename, SoundUploader

  belongs_to :artist
end
