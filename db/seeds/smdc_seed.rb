BASE_URL = ENV['BASE_URL']
properties = [
  {
    name: "Air Residences",
    address: "Malugay and Yakal Streets, Brgy. San Antonio, Makati City",
    latitude: "14.562567",
    longitude: "121.014695",
    unit_price: 3_000_000,
    monthly_amort: 14_000,
    description: {
      title: "The Air of Convenience",
      subtitle: "Personal efficiency and professional success made attainable",
      info: "Nothing says your have made it quite like a Makati address. Air Residences gives you privileged lifestyle combining a convenient location with the luxurious comfort of its signature amenities. Modern, contemporary and luxurious 59-storey high-rise condominium ideal for the young urban professional and the empowered single.",

      turnover: "1st Half of 2020"
      #info: "Because striking that balance between a demanding work schedule and vibrant social life is a key to life of success, Air Residences takes it up a notch by providing residents  with front desk and handyman services to aid its residents as they go about their daily pursuit of success."
    },
    amenities: ["Liesure and Lap Pool", "Pool Island", "Pool Pavilion", "Sun Deck", "BBQ Terrace",
      "Lush Landscape", "Spa", "Function Room", "Function Terrace", "Yoga", "Exercise Lawn", "Kids Play Pool", "Kids Playground", "Outdoor Lounge", "Joggin Trail", "Walking Trail", "Reflective Pool", "Pool Table/Billiards", "Table Tennis", "Game Alley", "Sports Terrace"
    ],
    unit_types: [
      {
        name: "Studio unit with balcony",
        floor_area_min: 22.95,
        floor_area_max: 22.95,
        floor_plan_image: "http://www.airresidences.com/wp-content/uploads/2014/11/1-Bedroom-Unit-with-Balcony.jpg",
        cost: 3000000,
        amortization: 14000,
        reservation_fee: 10000,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "1 Bedroom Unit",
        floor_area_min: 26.35,
        floor_area_max: 28.90,
        floor_plan_image: "http://www.airresidences.com/wp-content/uploads/2014/11/1-Bedroom-Unit-with-Balcony.jpg",
        cost: 3000000,
        amortization: 14000,
        reservation_fee: 10000,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "1 Bedroom Unit with Balcony",
        floor_area_min: 26.35,
        floor_area_max: 31.45,
        floor_plan_image: "http://www.airresidences.com/wp-content/uploads/2014/11/2-Bedroom-Unit-with-Balcony1.jpg",
        cost: 5000000,
        amortization: 15000,
        reservation_fee: 15000,
        info: "",
        bathrooms: 1,
        bedrooms: 2,
      },
      {
        name: "2 Bedroom Unit",
        floor_area_min: 36.55,
        floor_area_max: 36.55,
        floor_plan_image: "http://www.airresidences.com/wp-content/uploads/2014/11/1-Bedroom-Unit-with-Balcony.jpg",
        cost: 3000000,
        amortization: 14000,
        reservation_fee: 10000,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "2 Bedroom Unit with Balcony",
        floor_area_min: 46.38,
        floor_area_max: 46.38,
        floor_plan_image: "http://www.airresidences.com/wp-content/uploads/2014/11/1-Bedroom-Unit-with-Balcony.jpg",
        cost: 3000000,
        amortization: 14000,
        reservation_fee: 10000,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
    ],
    images: [
      "#{BASE_URL}images/air_residences/overview.jpg",
      "#{BASE_URL}images/air_residences/amenities.jpg",
      "#{BASE_URL}images/air_residences/bar.jpg",
      "#{BASE_URL}images/air_residences/one_bedroom.jpg",
    ]
  },
  {
    name: "Fame Residences",
    address: "Central EDSA",
    latitude: "14.577421",
    longitude: "121.052322",
    unit_price: 2_600_000,
    monthly_amort: 8_000,
    description: {
      title: "Fame Residences",
      subtitle: "Have a glimpse of the life lived in glitz and glamour, with gold curtain walls that surround this lumiscent development.",
      info: "Fame Residences gives yout the best address in Central EDSA with its close proximity to major Central Business Districts, transportation hubs, and shopping centers, and luxurious amenities. <br>Few meters away from MRT Shaw Boulevard bus stop strategically located at the center of Metro Manila's main artery - EDSA, bringing you close where the action is. A 4-Tower with a Common Podium, 39 floors each with commercial establishment on the groung floor."
      #info: "Fame Residences was designed and created with you in mind. Its features and amenities are intended to provide utmost leisure and opportunities for you to create extraoridinary expreiences worth talking about. Its proximity to key business districts and city hotspots make your life at Fame Residences exceptional, everyday."
    },
    amenities: ["Grand Lobby", "Amenity Lobby", "Walk of Fame", "Lap Pool", "Kiddie Pool", "Playground", "Outdoor Lounge", "Function Rooms"],
    unit_types: [
      {
        name: "1 Bedroom Unit with balcony",
        floor_area_min: 24.1,
        floor_area_max: 31.39,
        floor_plan_image: "http://fame-residences.com/wp-content/uploads/2014/11/1br-amenity.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "1 Bedroom End Unit with Balcony",
        floor_area_min: 29.74,
        floor_area_max: 29.74,
        floor_plan_image: "http://fame-residences.com/wp-content/uploads/2014/11/1br.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "2 Bedroom End Unit with Balcony",
        floor_area: 38.68,
        floor_plan_image: "http://www.airresidences.com/wp-content/uploads/2014/11/2-Bedroom-Unit-with-Balcony1.jpg",
        cost: 5000000,
        amortization: 15000,
        reservation_fee: 15000,
        info: "",
        bathrooms: 1,
        bedrooms: 2,
      }
    ],
    images: [
      "#{BASE_URL}images/fame/garden.jpg",
      "#{BASE_URL}images/fame/lobby.jpg",
      "#{BASE_URL}images/fame/pool.jpg",
      "#{BASE_URL}images/fame/Playground.jpg",
    ]
  },
  {
    name: "Shore Residences",
    address: "Mall of Asia Complex",
    latitude: "14.541756",
    longitude: "120.985125",
    unit_price: 2_900_000,
    monthly_amort: 12_000,
    description: {
      title: "Shore Residences",
      subtitle: "Conveniently located at the SM Mall of Asia Complex in Pasay City. It offers the finest in resort living with an exclusive beack-like amenity right at the heart of the development",
      info: "Everything is within reach - from numerous shopping and dining selection of SM Mall of Asia to the thriving array of activities and attractions in the Enterntainment City. A mid-rise, four-tower residential condominium that has a personal resort and entire amenity extends outside to MOA and surrounding parks and commercial areas where everyday is a vacation."
    },
    amenities: ["Grand Lobby", "Amenity Lobby", "Walk of Fame", "Lap Pool", "Kiddie Pool", "Playground", "Outdoor Lounge", "Function Rooms", "Cascading Water Feature", "Great Lawn", "Lush Tropical Gardens", "Pavillions", "Volleyball Court", "Jogging Trail", "24-Hour Security", "Fire Detection", "Alarm System"],
    unit_types: [
      {
        name: "1 Bedroom Unit",
        floor_area_min: 24.10,
        floor_area_max: 24.10,
        floor_plan_image: "http://www.smdc.com/wp-content/uploads/2014/03/Interior9.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "1 Bedroom Unit with Balcony",
        floor_area_min: 27.67,
        floor_area_max: 29.53,
        floor_plan_image: "http://www.smdc.com/wp-content/uploads/2014/03/Interior9.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "2 Bedroom with Balcony",
        floor_area_min: 58.46,
        floor_area_max: 58.46,
        floor_plan_image: "http://www.smdc.com/wp-content/uploads/2014/03/Interior-52.jpg",
        cost: 5000000,
        amortization: 15000,
        reservation_fee: 15000,
        info: "",
        bathrooms: 1,
        bedrooms: 2,
      }
    ],
    images: [
      "#{BASE_URL}images/shore/residences.jpg",
      "#{BASE_URL}images/shore/pool.jpg",
      "#{BASE_URL}images/shore/amenities.jpg",
      "#{BASE_URL}images/shore/bedroom.jpg"
    ]
  },
  {
    name: "Breeze Residences",
    address: "CCP Complex, Roxas Boulevard, Pasay City",
    latitude: "14.555585",
    longitude: "120.9892",
    unit_price: 2_800_000,
    monthly_amort: 12_000,
    description: {
      title: "Breeze Residences",
      subtitle: "Located in a very relaxing suburb, the residents can choose to enjoy the scenic view of the Manila Bay Sunset or the eye-catching Makati Skyline.",
      info: "Breeze Residences will be able to provide an ideal lifestyle to families, young professionals and even students, since it is very close to De La Salle University and Manila business district. Everything is within reach Shopping Centers, Supermarkets, Banks, Hospitals, Church, Hotels, Convention Center, Gasoline Stations, Airport, Transportation Terminals, Bars and Restaurants. Its strategic location will also provide residents an easy access to the Makati business area and yet enjoy the serenity of living right next to Manila Bay City. It has lot of development plans near the area like the Entertainment City, SM Arena, SM hotel and resort, Neo Chinatown and more."
    },
    amenities: ["Grand Lobby", "Amenity Lobby", "Walk of Fame", "Lap Pool", "Kiddie Pool", "Playground", "Outdoor Lounge", "Function Rooms", "Cascading Water Feature", "Great Lawn", "Lush Tropical Gardens", "Pavillions", "Volleyball Court", "Jogging Trail", "24-Hour Security", "Fire Detection", "Alarm System"],
    unit_types: [
      {
        name: "Studio with Balcony",
        floor_area_min: 22.00,
        floor_area_max: 31.00,
        floor_plan_image: "#{BASE_URL}images/breeze/studio_floor_plan.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "1 Bedroom unit with Balcony",
        floor_area_min: 26.00,
        floor_area_max: 38.00,
        floor_plan_image: "#{BASE_URL}images/breeze/one_bedroom_floor_plan.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "1 Bedroom Deluxe",
        floor_area_min: 40.00,
        floor_area_max: 40.00,
        floor_plan_image: "#{BASE_URL}images/breeze/one_bedroom_deluxe.jpg",
        cost: 5000000,
        amortization: 15000,
        reservation_fee: 15000,
        info: "",
        bathrooms: 1,
        bedrooms: 2,
      }
    ],
    images: [
      "#{BASE_URL}images/breeze/residences1.jpg",
      "#{BASE_URL}images/breeze/balcony.jpg",
      "#{BASE_URL}images/breeze/penthouse.jpg",
      "#{BASE_URL}images/breeze/pool_area.jpg"
    ]
  },
  {
    name: "Jazz Residences",
    address: "Metropolitan Avenue and Nicanor Garcia Streets, Makati City ",
    latitude: "14.563646",
    longitude: "121.021684",
    unit_price: 2_900_000,
    monthly_amort: 12_000,
    description: {
      title: "Jazz Residences",
      subtitle: "Jazz Residences",
      info: "Launched in 2010, Jazz Residences is a 4-tower “vertical village” that boasts of five-star amenities such as grand lobbies, function rooms, swimming pools, gym and fitness center, and landscaped gardens. It would also have its own mall – the Jazz Mall complete with commercial and food establishments, and an SM Supermarket providing all the conveniences at your doorstep."
    },
    amenities: ["Grand Lobby", "Amenity Lobby", "Walk of Fame", "Lap Pool", "Kiddie Pool", "Playground", "Outdoor Lounge", "Function Rooms", "Cascading Water Feature", "Great Lawn", "Lush Tropical Gardens", "Pavillions", "Volleyball Court", "Jogging Trail", "24-Hour Security", "Fire Detection", "Alarm System"],
    unit_types: [
      {
        name: "Studio",
        floor_area: 23.84,
        floor_area_min: 16.00,
        floor_area_max: 20.00,
        floor_plan_image: "#{BASE_URL}images/jazz/one_bedroom_floor_plan.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "1 Bedroom",
        floor_area: 31.66,
        floor_area_min: 23.00,
        floor_area_max: 32.00,
        floor_plan_image: "#{BASE_URL}images/jazz/one_bedroom_floor_plan_with_balcony.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "1 Bedroom with Balcony",
        floor_area: 31.66,
        floor_area_min: 26.00,
        floor_area_max: 36.00,
        floor_plan_image: "#{BASE_URL}images/jazz/one_bedroom_floor_plan_with_balcony.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "2 Bedroom with Balcony",
        floor_area: 46.72,
        floor_area_min: 36.00,
        floor_area_max: 64.00,
        floor_plan_image: "#{BASE_URL}images/jazz/two_bedroom_floor_plan.jpg",
        cost: 5000000,
        amortization: 15000,
        reservation_fee: 15000,
        info: "",
        bathrooms: 1,
        bedrooms: 2,
      }
    ],
    images: [
      "#{BASE_URL}images/jazz/overview.jpg",
      "#{BASE_URL}images/jazz/lobby.jpg",
      "#{BASE_URL}images/jazz/amenities.jpg",
      "#{BASE_URL}images/jazz/model.jpg"
    ]
  },
  {
    name: "Wind Residences",
    address: "Aguinaldo Highway, Barangay Maharika West, Tagaytay City",
    latitude: "14.101855",
    longitude: "120.943798",
    unit_price: 2_500_000,
    monthly_amort: 11_000,
    description: {
      title: "Wind Residences",
      subtitle: "Wind Residences",
      info: "Wind Residences is a 15-hectare property located at the heart of Tagaytay City, a premiere destination for both foreign and local tourists. It has ten 20-storey towers that offer breath-taking views of Taal Lake and the Metro Manila skyline. It is a residential and commercial development surrounded by green landscapes."
    },
    amenities: ["Grand Lobby", "Amenity Lobby", "Walk of Fame", "Lap Pool", "Kiddie Pool", "Playground", "Outdoor Lounge", "Function Rooms", "Cascading Water Feature", "Great Lawn", "Lush Tropical Gardens", "Pavillions", "Volleyball Court", "Jogging Trail", "24-Hour Security", "Fire Detection", "Alarm System"],
    unit_types: [
      {
        name: "Studio",
        floor_area_min: 20.00,
        floor_area_max: 20.00,
        floor_plan_image: "#{BASE_URL}images/wind/studio.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "1 Bedroom",
        floor_area: 31.97,
        floor_area_min: 26.00,
        floor_area_max: 31.00,
        floor_plan_image: "#{BASE_URL}images/wind/resort_residential.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "1 Bedroom with Balcony",
        floor_area: 31.97,
        floor_area_min: 28.00,
        floor_area_max: 48.00,
        floor_plan_image: "#{BASE_URL}images/wind/resort_residential.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "2 Bedroom",
        floor_area: 31.97,
        floor_area_min: 41.00,
        floor_area_max: 66.00,
        floor_plan_image: "#{BASE_URL}images/wind/resort_residential.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
    ],
    images: [
      "#{BASE_URL}images/wind/residences.jpg",
      "#{BASE_URL}images/wind/night.jpg",
      "#{BASE_URL}images/wind/lobby.jpg",
      "#{BASE_URL}images/wind/amenities.jpg"
    ]
  },
]

Image.connection.execute("TRUNCATE TABLE images;")
Property.connection.execute("TRUNCATE TABLE properties;")
Description.connection.execute("TRUNCATE TABLE descriptions;")
properties.each do |property|
  p = Property.new
  p.name = property[:name]
  p.location = property[:address]
  p.latitude = property[:latitude]
  p.longitude = property[:longitude]
  p.unit_price = property[:unit_price]
  p.monthly_amort = property[:monthly_amort]
  if p.save!
    puts p.name
    description = property[:description]
    desc = Description.new(property_id: p.id)
    desc.info =  description[:info]
    desc.title =  description[:title]
    desc.subtitle =  description[:subtitle]
    desc.save!

    Image.where(property_id: p.id).delete_all
    property[:images].each_with_index do |image, index|
      img = Image.new(url: image, name: image, position: index+1, property_id: p.id)
      img.save!
    end

    #property[:amenities].each do |amenity|
    #  Property.connection.execute("DELETE FROM properties_amenities WHERE property_id = #{p.id}")
    #  am = Amenity.where(name: amenity).first
    #  am = Amenity.create!(name: amenity) unless am
    #  ActiveRecord::Base.connection.execute("INSERT INTO properties_amenities (property_id, amenity_id) VALUES(#{p.id}, #{am.id})")
    #end

    Property.connection.execute("DELETE FROM unit_types WHERE property_id = #{p.id}")
    property[:unit_types].each do |unit_type|
      unit = UnitType.new
      unit.property_id = p.id
      unit.name = unit_type[:name]
      unit.floor_area_min = unit_type[:floor_area_min]
      unit.floor_area_max = unit_type[:floor_area_max]
      unit.cost = unit_type[:cost]
      unit.amortization = unit_type[:amortization]
      unit.reservation_fee = unit_type[:reservation_fee]
      unit.bathrooms = unit_type[:bathrooms]
      unit.bedrooms = unit_type[:bedrooms]
      unit.info = unit_type[:info]
      unit.save!
    end
  end
end

Agent.connection.execute('TRUNCATE TABLE agents;')
agents = [
  {name: "Floraida Vallespin",
   avatar_url: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/3/000/0b7/14b/301f6f5.jpg",
   linked_in_url: 'https://www.linkedin.com/pub/floraida-vallespin/a/721/2b7',
   facebook_url: 'https://www.facebook.com/adiarolf',
   email: '',
   skype: 'superfloi',
   whatsapp: '+63 9053943052',
   viber: '+63 9053943052',
   contact_no: '+63 9328853564',
   nrds: '61238190'
  },
]

agents.each do |agent|
  a = Agent.new(agent)
  a.save!
end

Testimonial.connection.execute('TRUNCATE TABLE testimonials;')
testimonials = [
  {
    client_name: "Joseph Alquisola",
    avatar_url: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/8/005/0a3/1d8/1ebcbdf.jpg",
    country_of_residence: "Singapore",
    info: "Shore 2 Residences Buyer",
    content: "I would like to thank Floi and her team for all of your wonderful support during our search for a good real estate investment.",
  },
  {
    client_name: "Pete Clyde Cagalawan",
    avatar_url: "#{ENV['BASE_URL']}/images/bg/pete.jpg",
    country_of_residence: "Singapore",
    info: "Shore 2 & Air Residences Buyer",
    content: "Working with Miss Floi Vallespin at SMDC is the most rewarding, fun-filled, super exciting, and awesome experience in my life as client, and at the same time, as a broker referrer. It is always nice to know that you meet someone who is not just adept on her craft, but also a person with a better character, very desirable personality, no nonsense individual style, and an incomparable knowledge and experience when it comes to real estate and beyond.",
  },
  {
    client_name: "Luzviminda Vitalicio",
    avatar_url: "#{ENV['BASE_URL']}/images/bg/luz.jpg",
    country_of_residence: "USA",
    info: "Shore 2 & Jazz Residences Buyer",
    content: "From the first moment I spoke with Floi Vallespin over the phone I was impressed with her knowledge and professionalism. Attention to details, ability to act quickly, understanding the needs of the buyer, without these three things, our property buying would not be a success.
    She posses all the attributes necessary to be an excellent broker. A big asset to SMDC.
    Ultimately long distance purchase made easy. My sons and I are grateful to you.",
  },
]

testimonials.each do |testimonial|
  a = Testimonial.new(testimonial)
  a.save!
end
