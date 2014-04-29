class Artist < ActiveRecord::Base
  has_secure_password
  attr_accessible :age, :city, :genre, :name, :profile_picture, :email, :password, :password_confirmation

  mount_uploader :profile_picture, ProfilePictureUploader

  has_many :songs

  validates :email, presence: true
  validates :email, uniqueness: true

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

end
