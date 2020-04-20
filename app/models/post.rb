class Post < ApplicationRecord
  validates :shopname, presence: true
  validates :view, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :comments, foreign_key: :post_id, dependent: :destroy
  has_many :likes,    foreign_key: :post_id, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  mount_uploader :image, ImageUploader

  
end
