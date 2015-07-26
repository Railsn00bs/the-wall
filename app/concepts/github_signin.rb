module GithubSignin
  def self.enabled?
    !disabled?
  end

  def self.disabled?
    ENV.fetch("GITHUB_SIGNIN_DISABLED", false) || Rails.env.development?
  end
end
