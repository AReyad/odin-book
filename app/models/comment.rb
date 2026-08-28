class Comment < ApplicationRecord
  belongs_to :comment_author, class_name: "User"
  belongs_to :comment_post, class_name: "Post", counter_cache: true
  belongs_to :parent_comment, class_name: "Comment", optional: true
  has_many :likes, as: :likeable
  has_many :replies, class_name: "Comment", foreign_key: "parent_comment_id", dependent: :destroy
end
