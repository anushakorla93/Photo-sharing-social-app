class Subscriber < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates_uniqueness_of :post_id, :message => "Its already subscribed"

end
