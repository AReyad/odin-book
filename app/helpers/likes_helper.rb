module LikesHelper
  def display_like_button(likeable, likes)
    likeable_type = likeable.class.to_s
    like = likes.find { |l| likeable.id == l.likeable_id && likeable_type == l.likeable_type }
    if like.nil?
      button_to "Like", likes_path, params: { like: { likeable_id: likeable.id, likeable_type: likeable_type } }
    else
      button_to "Unlike", like, method: :delete
    end
  end
end
