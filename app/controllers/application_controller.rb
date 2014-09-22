class ApplicationController < ActionController::Base
  before_filter :capture_referal

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  private
  def capture_referal
    session[:referral] = params[:referral] if params[:referral]
  end
end
