CarPost.destroy_all
User.destroy_all
CarMake.destroy_all
Review.destroy_all
MakeModel.destroy_all

100.times do 
    MakeModel.create(
    make_model: Faker::Vehicle.make_and_model,
    year: Faker::Vehicle.year,
    color: Faker::Vehicle.color,
    style: Faker::Vehicle.car_type,
    mileage: Faker::Vehicle.mileage
    )
end