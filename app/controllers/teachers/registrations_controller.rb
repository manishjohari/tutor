module Teachers
  class RegistrationsController < Devise::RegistrationsController

    protected
    # The path used after sign up.
    def after_sign_up_path_for(resource)
      teachers_dashboard_index_path
    end
  end
end