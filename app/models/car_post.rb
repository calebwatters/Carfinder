class CarPost < ApplicationRecord
    has_many :car_makes, dependent: :destroy
    has_many :make_models, through: :car_makes
    has_many :reviews, dependent: :destroy
    belongs_to :user
    accepts_nested_attributes_for :make_models
    mount_uploader :photo, PhotoUploader
    
    validates_processing_of :photo
    validate :photo_size_validation
    validates :title, presence: true
    validates :content, presence: true
    validates :photo, presence: true


     def self.search(search)
        if search
            attr = CarPost.where("title LIKE ?", "%#{search}%")
            if attr
                self.where(id: attr)
            else 
                CarPost.all
            end
        else
            CarPost.all
        end
    end
 
    private
    def photo_size_validation
        errors[:photo] << "should be less than 500KB" if photo.size > 0.5.megabytes
    end
end
