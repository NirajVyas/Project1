class Artist < ActiveRecord::Base
  has_secure_password
  attr_accessible :age, :city, :genre, :name, :profile_picture, :email, :password, :password_confirmation, :show, :show2, :show3, :show4, :show5

  mount_uploader :profile_picture, ProfilePictureUploader
  mount_uploader :show, ShowUploader
  mount_uploader :show2, ShowUploader
  mount_uploader :show3, ShowUploader
  mount_uploader :show4, ShowUploader
  mount_uploader :show5, ShowUploader


  has_many :songs

  validates :email, presence: true
  validates :email, uniqueness: true

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

end
