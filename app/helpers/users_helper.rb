module UsersHelper
  def gravatar_for(user, options = { size: 150 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    name = "#{user.first_name} #{user.last_name}"
    image_tag(gravatar_url, alt: name, class: "gravatar", size:"#{size}x#{size}")
  end
end
