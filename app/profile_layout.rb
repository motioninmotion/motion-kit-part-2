class ProfileLayout < MotionKit::Layout
  def layout
    add UIImageView, :profile_image
    add UILabel, :name_label
    add UILabel, :bio_label

    background_color UIColor.whiteColor
  end

  def bio_label_style
    text "Programmer and Teacher, master of that RubyMotion thing! Blogs at blog.motioninmotion.tv and you can view my screencasts for $9/month at motioninmotion.tv"
    color UIColor.darkGrayColor

    number_of_lines 0

    constraints do
      top.equals(:name_label, :bottom).plus(5)
      left.equals(:name_label)
      right.equals(:name_label)
      height.is <= 61
    end
  end

  def name_label_style
    text "Jack Watson-Hamblin"
    color UIColor.blackColor
    font UIFont.boldSystemFontOfSize(24)

    adjusts_font_size_to_fit_width true
    minimum_scale_factor 0.8

    constraints do
      top.equals(:superview).plus(40)
      left.equals(:profile_image, :right).plus(10)
      right.equals(:superview).minus(20)
    end
  end

  def profile_image_style
    image UIImage.imageNamed("profile_photo.jpg")

    constraints do
      top_left.equals(:superview).plus([20, 40])
      width.equals(100)
      height.equals(100)
    end
  end
end
