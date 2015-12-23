namespace :amenities do
  task load: :environment do
    amenities = YAML.load_file(Rails.root.join('db', 'seeds', 'amenities.yml'))

    amenities.each do |property_name, property_amenities|
      property = Property.where(name: property_name).first
      next if property.blank?

      Amenity.connection.execute("DELETE from amenities_properties where property_id = #{property.id}")
      property_amenities.each do |amenity_name|
        amenity = Amenity.where(name: amenity_name).first
        amenity = Amenity.create(name: amenity_name, code: amenity_name.tableize) unless amenity
        ActiveRecord::Base.connection.execute("INSERT INTO amenities_properties (property_id, amenity_id) VALUES(#{property.id}, #{amenity.id});")
      end
    end
  end
end
