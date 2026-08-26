class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  before_create :generate_username_from_email
  has_many :authored_posts, class_name: "Post", foreign_key: "post_author_id"
  has_many :post_comments, class_name: "Comment", foreign_key: "comment_author_id"
  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id"
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id"
  has_many :followers, through: :active_relationships, source: :follower
  has_many :following, through: :passive_relationships, source: :followed

  private

  def generate_username_from_email
    return if self.username
    generated_username = email.split(/@/).first
    self.username = generated_username
    count = 0
    while self.class.exists?(username: self.username)
      self.username = "#{generated_username}#{count}"
      count += 1
    end
  end
end
