# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery

  filter_parameter_logging :password

  USER_NAME, PASSWORD = "nkbook", "nkbook.123"

  before_filter :authenticate

private

  def authenticate
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == USER_NAME && password == PASSWORD
    end
  end

end
