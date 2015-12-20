namespace :amenities do
  task load: :environment do
    amenities = YAML.load_file(Rails.root.join('db', 'seeds', 'amenities.yml'))

    amenities.each do |property_name, property_amenities|
      property = Property.where(name: property_name).first
      next if property.blank?

      property_amenities_db = property.amenities.map(&:id)
      puts property_amenities_db.inspect
      property_amenities.each do |amenity_name|
        amenity = Amenity.where(name: amenity_name).first
        amenity = Amenity.create(name: amenity_name, code: amenity_name.tableize) unless amenity
        puts amenity.id
        puts property_amenities_db.include?(amenity.id)
        unless property_amenities_db.include?(amenity.id)
          ActiveRecord::Base.connection.execute("INSERT INTO amenities_properties (property_id, amenity_id) VALUES(#{property.id}, #{amenity.id});")
        end
      end
    end
  end
end
