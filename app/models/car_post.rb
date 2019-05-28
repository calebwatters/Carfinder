class CarPost < ApplicationRecord
    has_many :car_makes
    has_many :make_models, through: :car_makes
    has_many :reviews
    has_many :users, through: :reviews
    accepts_nested_attributes_for :make_models
    mount_uploader :photo, PhotoUploader
    validates_processing_of :photo
    validate :photo_size_validation


    # def make_models_attributes=(make_model_attributes)
    #     make_model_attributes.values.each do |make_model_attribute|
    #         make_model = MakeModel.find_or_create_by(make_model_attribute)
    #         self.car_post_make_models.build(make_model: make_model)
    #     end
    # end
 
    private
    def photo_size_validation
        errors[:photo] << "should be less than 500KB" if photo.size > 0.5.megabytes
    end
end
