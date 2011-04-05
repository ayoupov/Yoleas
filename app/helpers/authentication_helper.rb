module AuthenticationHelper
def signed_in?
    !session[:user_id].nil?
  end

  def current_user
    session_by_uid = session[:user_id]
    if !session_by_uid.nil?
      @current_user ||= User.find(session_by_uid)
    else
      @current_user = nil
    end
  end

  def ensure_signed_in
    unless signed_in?
      session[:redirect_to] = request.fullpath
      redirect_to(new_session_path)
    end
  end
end
