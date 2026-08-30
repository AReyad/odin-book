class Relationship < ApplicationRecord
  belongs_to :followed, class_name: "User", foreign_key: "follower_id", counter_cache: :following_count
  belongs_to :follower, class_name: "User", foreign_key: "followed_id", counter_cache: :followers_count
end
