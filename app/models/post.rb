class Post < ApplicationRecord
  belongs_to :user
  has_many :subscribers, :dependent => :destroy
  mount_uploader :photo, ImageUploader
end
