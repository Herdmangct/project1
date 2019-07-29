class ApplicationController < ActionController::Base

  # Before any action is performed call the fetch_user method.
  before_action :fetch_user

  def check_for_login
    redirect_to login_path unless @current_user.present?
  end

  def check_for_admin
    redirect_to login_path unless @current_user.present? && @current_user.admin
  end

  private
  def fetch_user

    # Search for a user by their user id if we can find one in the session hash.
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?

    # Clear out the session user_id if no user is found, for reseeding database
    session[:user_id] = nil unless @current_user.present?

  end

end
