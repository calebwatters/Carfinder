class CarPost < ApplicationRecord
    has_many :car_makes
    has_many :make_models, through: :car_makes
    has_many :reviews
    has_many :users, through: :reviews
end
