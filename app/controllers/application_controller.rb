class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Pundit
  rescue_from Pundit::NotAuthorizedError, :with => :record_not_found
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def record_not_found
    flash[:error] = "fuckkkkkkk."
    redirect_to request.headers["Referer"] || root_path
  end

  def user_not_authorized
    flash[:error] = "You are not authorized to perform this action."
    redirect_to request.headers["Referer"] || root_path
  end
end
