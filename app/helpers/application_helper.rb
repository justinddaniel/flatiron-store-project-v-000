module ApplicationHelper

  def logged_in?
    session.include? :user_id
  end
end
