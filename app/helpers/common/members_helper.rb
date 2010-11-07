module Common::MembersHelper

  def user_image(user)
    user.photo_file_name == nil ?
      image_tag("generic_user.png") : image_tag(user.photo.url(:medium))
  end

  def user_age(user)
    age(user) unless user.date_of_birth == nil
  end

  def image_gallery(user)
    link_to("Click here to visit #{user.first_name}'s image gallery.", user.image_gallery_url, :target => '_blank')
  end

end

