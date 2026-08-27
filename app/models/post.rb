class Post < ApplicationRecord
  belongs_to :post_author, class_name: "User"
  has_many :post_comments, class_name: "Comment", foreign_key: "comment_post_id", dependent: :destroy
end
