class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, :omniauth_providers => [:github]

  has_many :projects

  def self.from_omniauth(auth)
    where(
      :github_username => auth[:info][:nickname],
      :email => auth[:info][:email]
    ).first_or_create
  end
end
