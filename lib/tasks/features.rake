namespace :features do
  task load: :environment do
    features = YAML.load_file(Rails.root.join('db', 'seeds', 'features.yml'))

    features.each do |property_name, property_features|
      property = Property.unscoped.where(name: property_name).first
      next if property.blank?

      property_features_db = property.features.map(&:id)
      puts property_features_db.inspect
      property_features.each do |feature_name|
        feature = Feature.where(name: feature_name).first
        feature = Feature.create(name: feature_name, info: feature_name) unless feature
        puts feature.id
        puts property_features_db.include?(feature.id)
        unless property_features_db.include?(feature.id)
          property.property_features.create(feature: feature)
        end
      end
    end
  end
end
