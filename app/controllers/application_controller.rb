class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # as in previous, set this as a helper method so we have it in the view
  helper_method :name

  # set the session name, otherwise equal to nil
  def name
    session[:name] ||= nil
  end

end