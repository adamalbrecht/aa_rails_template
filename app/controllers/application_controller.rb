class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_page_name

  private

  def set_page_name
    @current_action = action_name
    @current_controller = controller_name
    @page_name ||= "#{@current_controller.humanize}#{@current_action.humanize}"
  end
end
