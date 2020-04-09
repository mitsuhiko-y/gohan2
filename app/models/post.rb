class Post < ApplicationRecord
  validates :shopname, presence: true
  validates :view, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :comments
  has_many :likes
end
