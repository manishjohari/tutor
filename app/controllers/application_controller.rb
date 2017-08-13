class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if resource.type == 'Teacher'
      teachers_dashboard_index_path
    elsif resource.type == 'Student'
      students_dashboard_index_path
    end
  end
end
