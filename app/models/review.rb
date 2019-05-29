class Review < ApplicationRecord
    belongs_to :user
    belongs_to :car_post
      validates :user_id, presence: true
      validates :car_post_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
