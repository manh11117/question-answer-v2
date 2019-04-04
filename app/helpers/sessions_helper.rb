# frozen_string_literal: true

# module SessionsHelper
module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end
end
