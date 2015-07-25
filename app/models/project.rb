class Project < ActiveRecord::Base
  belongs_to :user
  has_many :this_is_cool
  has_many :liked_users, through: :this_is_cool, source: :project

  def user_liked?( user )
    liked_users.where( user: user ).exists?
  end

end
