module UsersHelper
  def display_follow_button(user)
    return if current_user == user

    if current_user.following?(user)
      button_to "Unfollow", relationship_path(user.id), method: :delete, params: { user_id: user.id }
    elsif current_user.followed_by?(user)
      button_to "Follow back", relationships_path(user), params: { user_id: user.id }
    else
      button_to "Follow", relationships_path(user), params: { user_id: user.id }
    end
  end
end
