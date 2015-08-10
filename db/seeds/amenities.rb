amenities = {
  garage: {name: "Garage", icon: 'fa-car'},
  security: {name: "24-Hour Security", icon: 'fa-shield'},
  aircon: {name: "Air Conditioning", icon: 'fa-asterisk'},
  tv_cable: {name: "TV Cable", icon: 'fa-desktop'},
  playground: {name: "Playground", icon: 'fa-child'},
  swimming_pool: {name: "Swimming Pool", icon: 'fa-tint'},
  internet: {name: "Internet", icon: 'fa-wifi'},
  function_rooms: {name: "Function Rooms", icon: 'fa-group'},
  open_courts: {name: "Open Courts", icon: 'fa-soccer-ball-o'},
  pavilion: {name: "Pavilion", icon: 'fa-leaf'},
  garden: {name: "Garden", icon: 'fa-leaf'},
  trail: {name: "Jogging Trail", icon:'fa-tree'},
  lobby: {name: "Lobby", icon: 'fa-tree' },
  balcony: {name: "Balcony", icon: 'fa-arrows-v'},
}

Amenity.destroy_all
amenities.each do |code, amenity|
  am = Amenity.where(code: code).first
  am = Amenity.new(code: code) unless am
  am.icon = amenity[:icon]
  am.name = amenity[:name]
  am.save!
end


