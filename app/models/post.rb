class Post < ApplicationRecord
  belongs_to :post_author, class_name: "User"
end
