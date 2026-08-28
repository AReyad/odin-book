class Post < ApplicationRecord
  default_scope { order(created_at: :desc) }
  belongs_to :post_author, class_name: "User"
  has_many :post_comments, class_name: "Comment", foreign_key: "comment_post_id", dependent: :destroy
end
