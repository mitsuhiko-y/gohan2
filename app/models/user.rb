class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :posts,                           dependent: :destroy
  has_many :comments, foreign_key: :user_id, dependent: :destroy
  has_many :likes,    foreign_key: :user_id, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post
  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end
end