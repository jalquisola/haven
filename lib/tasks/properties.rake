namespace :properties do
  task load: :environment do
    properties = YAML.load_file(Rails.root.join('db', 'seeds', 'properties.yml'))
    fields = %w(location short_address latitude longitude unit_price 
                monthly_amort min_area max_area property_type status
                video_url agent_id enabled featured turnover rating
               )
    properties.each do |property_data|
      property = Property.where(name: property_data['name']).first
      property = Property.new(name: property_data['name']) unless property

      fields.each do |field|
        property.send("#{field}=", property_data[field])
      end

      if property.save!
        desc = Description.where(property_id: property.id).first
        desc = Description.new(property_id: property.id) unless desc
        desc.info = property_data['description']
        desc.subtitle = property_data['description']
        desc.save!
      end
    end
  end

  task set_youtube_video: :environment do
    videos = YAML.load_file(Rails.root.join('db', 'seeds', 'youtube_videos.yml'))
    videos.each do |property_name, video_id|
      property = Property.where(name: property_name).first
      next if property.blank?
      property.youtube_video_id = video_id
      property.save
    end
  end
end
