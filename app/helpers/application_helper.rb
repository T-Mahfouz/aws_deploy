module ApplicationHelper
  def is_arabic?
    session[:locale] == 'ar'
  end
end
