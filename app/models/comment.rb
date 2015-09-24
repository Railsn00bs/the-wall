class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates :user, :project, :body, presence: true
end
