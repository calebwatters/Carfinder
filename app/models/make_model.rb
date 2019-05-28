class MakeModel < ApplicationRecord
    has_many :car_makes
    has_many :car_posts, through: :car_makes
end
