class Report < ActiveRecord::Base
  acts_as_gmappable

  def gmaps4rails_address
    address
  end

  def gmaps4rails_marker_picture
    {
      "rich_marker" =>  "<div class='my-marker'><img height='45' width='45' src='http://0.0.0.0:3000/assets/logo.png'/></div>"

    }
  end
  
end