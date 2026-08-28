module LikesHelper
  def display_like_button(likeable)
    like = current_user.likes.find_by(likeable: likeable)
    if like.nil?
      button_to "Like", likes_path, params: { like: { likeable_id: likeable.id, likeable_type: likeable.class.to_s } }
    else
      button_to "Unlike", like, method: :delete
    end
  end
end
