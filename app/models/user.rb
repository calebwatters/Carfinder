class User < ApplicationRecord
    has_many :reviews
    has_many :car_posts, through: :reviews
end
