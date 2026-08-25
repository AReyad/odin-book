class Comment < ApplicationRecord
  belongs_to :comment_author, class_name: "User"
  belongs_to :comment_post, class_name: "Post"
end
