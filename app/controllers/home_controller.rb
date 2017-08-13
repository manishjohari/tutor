class HomeController < ApplicationController
  def index
    if signed_in?
      begin
        if current_teacher
          redirect_to teachers_dashboard_index_path
        end
      end
      begin
        if current_student
          redirect_to students_dashboard_index_path
        end
      end
    end
  end
end
