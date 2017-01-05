module SessionHelper

  def trusted_reviewer?
    user = User.find_by(id: session[:user_id])
    if user
      return true if user.trusted_reviewer == true
    end
  end

  def current_user
    if active_session?
      User.find_by(id: session[:user_id])
    end
  end

  def active_session?
    session[:user_id] != nil
  end

end
