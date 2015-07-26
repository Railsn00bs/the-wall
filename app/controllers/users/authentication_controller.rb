class Users::AuthenticationController < Devise::OmniauthCallbacksController
  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])

    sign_in_and_redirect @user
  end

  def dev_sign_in
    redirect_to :controller => :projects, :action => :index unless GithubSignin.disabled?

    sign_in(User.find_by(name: "Dev"))

    redirect_to :back
  end

  def dev_two_sign_in
    redirect_to :controller => :projects, :action => :index unless GithubSignin.disabled?

    sign_in(User.find_by(name: "Second dev"))

    redirect_to :back
  end
end
