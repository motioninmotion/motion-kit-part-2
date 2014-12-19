class ProfileViewController < UIViewController
  def loadView
    @layout = ProfileLayout.new
    self.view = @layout.view
  end
end
