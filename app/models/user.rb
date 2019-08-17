class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true, length: { in: 3..20 }, format: { with: /\A[A-Za-z0-9_]+\z/, message: I18n.t('username') }
  validates :email, uniqueness: true

  has_many :tweets, dependent: :destroy

  has_many :active_relationships, class_name: 'Relationship', foreign_key: 'follower_id', dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed

  has_many :passive_relationships, class_name: 'Relationship', foreign_key: 'followed_id', dependent:   :destroy
  has_many :followers, through: :passive_relationships

  scope :all_except, ->(user) { where.not(id: user).limit(5) }

  # Follows a user.
  def follow(other_user)
    following << other_user
  end

  # Unfollows a user.
  def unfollow(other_user)
    following.delete(other_user)
  end

  # Returns true if the current user is following the other user.
  def following?(other_user)
    following.include?(other_user)
  end
end
