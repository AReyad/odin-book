module ApplicationHelper
  def display_user(user)
    user_name = user.display_name.capitalize
    link_to user_name, user
  end
end
