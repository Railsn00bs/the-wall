class Project < ActiveRecord::Base
  belongs_to :user
  has_many :like
  has_many :liked_users, through: :like, source: :project

  def user_liked?( user )
    liked_users.where( user: user ).exists?
  end

end
