class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  validates :product, :user,
              presence: true
  validates :rating,
              presence: true,
              numericality: { only_integer: true, greater_than: -1, less_than: 6 }
end
