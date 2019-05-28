class CarMake < ApplicationRecord
    belongs_to :car_post
    belongs_to :make_model
end
