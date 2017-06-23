module TopicsHelper
  def user_is_authorized_for_topics?
    current_user && current_user.admin?
  end

  def admin_is_authorized_for_sponsored_post?
    current_user && current_user.admin?
  end
end
