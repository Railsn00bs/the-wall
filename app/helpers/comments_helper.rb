module CommentsHelper

  def github_avatar_for(username)
    github_url = "https://avatars.githubusercontent.com/#{username}"
    image_tag(github_url, alt: username, class: "user_avatar")
  end

end
