class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    self.sign_in_with("facebook")
  end

  def google_oauth2
    self.sign_in_with("google_oauth2")
  end

  def sign_in_with(provider)
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    provider.downcase!
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => provider.capitalize) if is_navigational_format?
    else
      session["devise.#{provider}_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end


  def failure
    redirect_to root_path
  end
end
