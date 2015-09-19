BASE_URL = ENV['BASE_URL']
Banner.connection.execute("TRUNCATE table banners;")

(1..6).each do |index|
  banner = Banner.new
  banner.image_url = "#{BASE_URL}images/bg/bg_#{index}.jpg"
  banner.position = index
  banner.save!
end


