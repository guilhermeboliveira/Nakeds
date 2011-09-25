require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder

  respond_to :html, :json

  protect_from_forgery


  def after_sign_in_path_for(resource)
    dashboard_path
  end
end
