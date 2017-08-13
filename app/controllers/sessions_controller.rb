class SessionsController < Devise::SessionsController
  def create
    user = User.find_by(email: params_email)
    if user
      self.resource =  user # warden.authenticate!(auth_options)
      set_flash_message!(:notice, :signed_in)
      sign_in(resource_name, resource)
      user.update_attribute(:is_active, true)
      user.update_attribute(:is_deleted, false) if user.is_deleted 
      yield resource if block_given?
      respond_with resource, location: after_sign_in_path_for(resource)
    end
  end

  private

  def params_email
    email_params = params.require(:teacher).permit(:email) if params[:teacher]
    email_params = params.require(:student).permit(:email) if params[:student]
    email_params[:email].downcase
  end
end