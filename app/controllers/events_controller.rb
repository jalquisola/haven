class EventsController < ApplicationController
  def grand_land
    @title = "Discover Grand Cebu - MyBestHaven"
    @image_url = "https://s3.amazonaws.com/mybesthaven.com/images/discover-grand-cebu.jpg"
    render :grand_land, layout: false
  end
end
