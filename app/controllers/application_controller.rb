class ApplicationController < ActionController::Base
  before_action :set_locale
  def set_locale
    _locale = params[:locale]
    session[:locale] =  params[:locale] unless _locale.blank?
    I18n.locale = session[:locale]
  end
end
