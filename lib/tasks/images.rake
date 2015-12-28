namespace :images do
  task load: :environment do
    images = YAML.load_file(Rails.root.join('db', 'seeds', 'images.yml'))

    images.each do |property_name, data|
      property = Property.unscoped.where(name: property_name).first
      next if property.blank?
      index = 1
      data['images'].each do |name, url|
        image = property.images.where(name: name).first
        image = property.images.new(name: name) unless image
        image.url = url
        image.position = index
        index += 1
        image.save!
      end

      next if data['floor_plans'].blank?
      data['floor_plans'].each do |name, url|
        fp = property.floor_plans.where(name: name).first
        fp = property.floor_plans.new(name: name) unless fp
        fp.image_url = url
        fp.save!
      end
    end
  end
end
