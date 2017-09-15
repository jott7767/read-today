module ApplicationHelper
  def admin_signed_in?
    user_signed_in? && current_user.has_roles?(:admin)
  end
end
