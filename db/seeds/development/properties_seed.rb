properties = [
  {
    name: "Air Residences Makati City",
    address: "Malugay and Yakal Streets, Brgy. San Antonio, Makati City",
    description: {
      title: "The Air of Convenience",
      subtitle: "Personal efficiency and professional success made attainable",
      info: "Because striking that balance between a demanding work schedule and vibrant social life is a key to life of success, Air Residences takes it up a notch by providing residents  with front desk and handyman services to aid its residents as they go about their daily pursuit of success."
    },
    amenities: ["Liesure and Lap Pool", "Pool Island", "Pool Pavilion", "Sun Deck", "BBQ Terrace",
      "Lush Landscape", "Spa", "Function Room", "Function Terrace", "Yoga", "Exercise Lawn", "Kids Play Pool", "Kids Playground", "Outdoor Lounge", "Joggin Trail", "Walking Trail", "Reflective Pool", "Pool Table/Billiards", "Table Tennis", "Game Alley", "Sports Terrace"
    ],
    unit_types: [
      {
        name: "1 Bedroom Unit",
        floor_area: 26.35,
        floor_plan_image: "http://www.airresidences.com/wp-content/uploads/2014/11/1-Bedroom-Unit-with-Balcony.jpg",
        cost: 3000000,
        amortization: 14000,
        reservation_fee: 10000,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "2 Bedroom Unit",
        floor_area: 46.38,
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
      "http://www.airresidences.com/wp-content/uploads/2014/11/SDP-IMAGE-WITH-BUILDING.jpg",
      "http://www.airresidences.com/wp-content/uploads/2014/10/About-slider.jpg",
      "http://www.airresidences.com/wp-content/uploads/2014/10/About-slider5.jpg",
      "http://www.airresidences.com/wp-content/uploads/2014/10/Contact-Us-Slider-Revised-1.jpg"
    ]
  },
  {
    name: "Fame Residences",
    address: "Central EDSA",
    description: {
      title: "Fame Residences",
      subtitle: "Have a glimpse of the life lived in glitz and glamour, with gold curtain walls that surround this lumiscent development.",
      info: "Fame Residences was designed and created with you in mind. Its features and amenities are intended to provide utmost leisure and opportunities for you to create extraoridinary expreiences worth talking about. Its proximity to key business districts and city hotspots make your life at Fame Residences exceptional, everyday."
    },
    amenities: ["Grand Lobby", "Amenity Lobby", "Walk of Fame", "Lap Pool", "Kiddie Pool", "Playground", "Outdoor Lounge", "Function Rooms"],
    unit_types: [
      {
        name: "1 Bedroom Unit",
        floor_area: 31.39,
        floor_plan_image: "http://fame-residences.com/wp-content/uploads/2014/11/1br-amenity.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "1 Bedroom Unit with Balcony",
        floor_area: 24.10,
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
        floor_area: 36.68,
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
      "http://fame-residences.com/wp-content/uploads/bfi_thumb/09-2y0a1izmcuhtg4p5g7vh8g.jpg",
      "http://fame-residences.com/wp-content/uploads/bfi_thumb/07a-2yb7d9xjjdocayx6dog9hc.jpg",
      "http://fame-residences.com/wp-content/uploads/bfi_thumb/04-2y03m572kb82429cr9ezgg.jpg",
      "http://fame-residences.com/wp-content/uploads/bfi_thumb/01-2xzm7jdr4s6xqo18jzugw0.jpg"
    ]
  },
  {
    name: "Shore Residences",
    address: "Mall of Asia Complex",
    description: {
      title: "Shore Residences",
      subtitle: "Conveniently located at the SM Mall of Asia Complex in Pasay City. It offers the finest in resort living with an exclusive beack-like amenity right at the heart of the development",
      info: "Everything is within reach - from numerous shopping and dining selection of SM Mall of Asia to the thriving array of activities and attractions in the Enterntainment City."
    },
    amenities: ["Grand Lobby", "Amenity Lobby", "Walk of Fame", "Lap Pool", "Kiddie Pool", "Playground", "Outdoor Lounge", "Function Rooms", "Cascading Water Feature", "Great Lawn", "Lush Tropical Gardens", "Pavillions", "Volleyball Court", "Jogging Trail", "24-Hour Security", "Fire Detection", "Alarm System"],
    unit_types: [
      {
        name: "1 Bedroom Unit",
        floor_area: 24.10,
        floor_plan_image: "http://www.smdc.com/wp-content/uploads/2014/03/Interior9.jpg",
        cost: 3500000,
        amortization: 14500,
        reservation_fee: 10500,
        info: "",
        bathrooms: 1,
        bedrooms: 1,
      },
      {
        name: "2 Bedroom",
        floor_area: 36.68,
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
      "http://www.smdc.com/wp-content/uploads/2014/03/Beach-Pool.jpg",
      "http://www.smdc.com/wp-content/uploads/2014/03/Shore-Residences-Night.jpg",
      "http://www.smdc.com/wp-content/uploads/2014/03/Interior-29.jpg",
      "http://www.smdc.com/wp-content/uploads/2014/03/Interior9.jpg"
    ]
  },
]

Property.delete_all
properties.each do |property|
  p = Property.new
  p.name = property[:name]
  p.location = property[:address]
  if p.save!
    desc = Description.new(property[:description])
    desc.save!

    Image.where(property_id: p.id).delete_all
    property[:images].each_with_index do |image, index|
      img = Image.new(url: image, name: image, position: index+1, property_id: p.id)
      img.save!
    end

    property[:amenities].each do |amenity|
      Property.connection.execute("DELETE FROM properties_amenities WHERE property_id = #{p.id}")
      am = Amenity.where(name: amenity).first
      am = Amenity.create!(name: amenity) unless am
      ActiveRecord::Base.connection.execute("INSERT INTO properties_amenities (property_id, amenity_id) VALUES(#{p.id}, #{am.id})")
    end

    property[:unit_types].each do |unit_type|
      Property.connection.execute("DELETE FROM unit_types WHERE property_id = #{p.id}")
      unit = UnitType.new
      unit.property_id = p.id
      unit.name = unit_type[:name]
      unit.floor_area = unit_type[:floor_area]
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
