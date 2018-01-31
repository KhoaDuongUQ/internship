class Product < ApplicationRecord
  validates  :title, :description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  mount_uploaders :images, ImageUploader
  validates :images, file_size: { less_than: 5.megabytes }
  belongs_to :user
  has_many :bids, dependent: :destroy
end
