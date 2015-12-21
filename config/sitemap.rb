# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = ENV['BASE_URL']
SitemapGenerator::Sitemap.public_path = 'tmp/sitemaps'

SitemapGenerator::Sitemap.create do
  Property.enabled.each do |property|
    images = property.images.map{|img| {loc: img.url, caption: img.name, title: img.name}}
    add realestate_path(property), images: images, lastmod: property.updated_at, priority: 0.7, changefreq: 'daily'
  end
end
