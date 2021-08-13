# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Trip.destroy_all

  hiking_trip2 =
{ name: "Le Morne Brabant", 
  description:"Le Morne Brabant is a peninsula at the extreme southwestern tip of the Indian Ocean island of Mauritius on the western side of the island.",
  address:"afgsd" ,
  longitude:"57.3082",
  latitude:"-20.4563",
  duration:"3 hr",
  image_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1628827854/trip%20buddy/sightseeing/le-morne-brabant_4_d9ilni.jpg",
  price: 700,
  stop_1:"Blue Marlin- For a more challenging trip",
  stop_1_lat:"-20.1897",
  stop_1_long:"57.5061",
  stop_1_img_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1628827977/trip%20buddy/sightseeing/paradis-beachcomber-golf_mtdytu.jpg",
  stop_2:"Slave Route Monument",
  stop_2_lat:"-20.4523",
  stop_2_long:"57.3143",
  stop_2_img_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1628828108/trip%20buddy/sightseeing/international-slave-route_fs3caq.jpg",
  choice:"day",
  category:"hiking"
  }
hiking_trip3 =
{ name: "Pieter Both", 
  description:"Pieter Both is the second highest mountain of Mauritius, at 820 metres tall. The mountain is shorter that Piton de la Petite Rivière Noire by eight meters. It is named after Pieter Both, the first Governor-General of the Dutch East Indies. It is located in the Moka Range",
  address:"sdfhdf" ,
  longitude:"57.5552",
  latitude:"-20.1923",
  duration:"4 hr 30 min ",
  image_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1628828220/trip%20buddy/sightseeing/unnamed_tfmmm4.jpg",
  price: 1200,
  stop_1:"Malenga View Point Camping Area",
  stop_1_lat:"-20.1963",
  stop_1_long:"57.5606",
  stop_1_img_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1628828356/trip%20buddy/sightseeing/download_yrtn7q.jpg",
  choice:"day",
  category:"hiking"
}
  [hiking_trip2, hiking_trip3 ].each do |attributes|
    trip = Trip.create!(attributes)
    puts "Created #{trip.name}"
  end
  puts "Finished creating hiking trips!"

sight_seeing1 = {  
  name:"red-roofed Notre Dame Auxiliatrice",
  description: "Visit the Cap Malheureux which is a fishing village famous for the red-roofed Notre Dame Auxiliatrice.The tour will be conducted in a comfortable air-conditioned car with a professional driver. You will be accompanied by a guide throughout the tour who will tell you interesting stories and facts about the places.",
  address: " Cap Malheureux",
  longitude:"57.6222",
  latitude:"-19.9866",
  duration:"1 hr",
  image_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1628680401/trip%20buddy/sightseeing/Church_gm4oon.jpg",
  price: 400,
  stop_1:"amigo restaurant- leading seafood venue in the north of the island,Renowned for its langouste.",
  stop_1_lat:"-19.9932",
  stop_1_long:"57.6139",
  stop_1_img_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1628829393/trip%20buddy/sightseeing/download_1_jadu2r.jpg",
  choice:"day",
  category:"sight-seeing"
}
sight_seeing2 = {  
  name: "Citadelle",
  description: "Citadel Fort Adelaide also known as La Citadelle or Citadel of Fort-Louis is perched on the hill of Port-Louis, 'la Petite Montagne', a silent sentry watches over the capital of Mauritius, La Citadelle de Port Louis, also known as Le Fort Adelaïde",
  address: "sdfghsfgjhs",
  longitude:"57.50417",
  latitude:"-20.16139",
  duration:"2 hr 30 min ",
  image_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1628829497/trip%20buddy/sightseeing/History-Of-Citadel-Fort_o6p7ei.jpg",
  price: 200,
  stop_1:"Champs de Mars -home to the oldest racecourse in the Southern Hemisphere",
  stop_1_lat:"-20.1692",
  stop_1_long:"57.5102",
  stop_1_img_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1628829563/trip%20buddy/sightseeing/horse-racing-in-mauritius-champ-de-mars-racecourse-521665_rqv1gq.jpg",
  stop_2:"Gloria fast food",
  stop_2_lat:"-20.16357",
  stop_2_long:"57.5049828",
  stop_2_img_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1628830360/trip%20buddy/sightseeing/images_g9gniw.jpg",
  choice:"day",
  category:"sight-seeing"
}
sight_seeing3 = {  
  name: "Ganga Talao",
  description:"Ganga Talao is a major draw of crowds in Mauritius, with many people visiting the site to pray, meditate, play with the local monkeys, or simply to walk by the lake and enjoy the gorgeous surrounding views.The lake of Ganga Talao is thought to be around 18 meters deep and is teeming with a healthy population of fish and eels – no doubt due to the leftover offerings they receive from Hindu pilgrims. However, it is strictly forbidden to fish here due to the sacred nature of the Ganga Talao lake.",
  address: "dsfhsfdhh",
  longitude:"57.50417",
  latitude:"-20.4180",
  duration:"4 hr 30 min ",
  image_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1628680402/trip%20buddy/sightseeing/tourist-attractions_5_vhlj9d.jpg",
  price: 500,
  stop_1: "Le Bois Cheri Restaurant - It is a must to come and experience the cuisine alongside its outstanding scenery when you are around the parts",
  stop_1_lat:"-20.4282",
  stop_1_long:"57.5223",
  stop_1_img_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1628830444/trip%20buddy/sightseeing/2747428_zNogcnlhgYmczu2LAw25QW9mOaee3yZx6hWrV_fHuZQ_txvxll.jpg",
  choice:"day",
  category:"sight-seeing"
}
[sight_seeing1, sight_seeing2, sight_seeing3 ].each do |attributes|
  trip = Trip.create!(attributes)
  puts "Created #{trip.name}"
end
puts "Finished creating sight-seeing trips!"
sea_cruise_trip1 =
 { name: "Gabriel Island Cruise", 
   description:"The 45 feet catamaran is very spacious and departs from the Grand Bay. To lift the spirits of all people on board, the crew will play local Mauritian music.",
   address:"fdjghlkdfhsze",
   longitude:"57.6715",
   latitude:"-19.8863",
   duration:"17 hr",
   image_url:"https://media-cdn.tripadvisor.com/media/photo-s/05/f6/2a/c5/catamaran-cruises-mauritius.jpg",
   price: 10900,
   choice:"night",
   category:"sea-cruising"
   }
sea_cruise_trip2 =
   { name: "Flat Island Cruise", 
   description: "For a day full of drinks, fun and enjoyment, a trip to Flat Island is an appropriate one.  This will include an unforgettable cruise as you sail on your private luxury cruise. As the catamaran departs at 9:00 AM from Grand Bay, you will be served breakfast a little later. The breakfast includes coffee, tea, juice, croissant and chocolate bread. You will have to sail around for one and a half hour before reaching Flat Island.",
   address:"fdkdfh shsfgh",
   longitude:"57.6581",
   latitude:"-19.8750",
   duration:"4 hr",
   image_url:"https://res.cloudinary.com/cruise-paradise/image/upload/v1628074128/cruise/IMG_1555-scaled_obvotj.jpg",
   price: 2500,
   choice:"day",
   category:"sea-cruising"
   }
sea_cruise_trip3 =
   { name: "Ile de la Passe Cruise", 
   description: "Treat yourself to a memorable day of exhilarating sail on a beautiful 45 foot catamaran to Ile de la passe – this will definitely be one of the highlights of your holidays in Mauritius.The excursion starts at 8:30AM before the other boats from Pointe Jerome embarkation point in Mahebourg. First stop will be a beautiful snorkeling session in the crystal clear water of Pointe Jerome to put you in the mood.Later on, the boat will bring you to the famous Ile aux Phare where you will be able to take beautiful pictures in the ruins. This hilly & rocky island, also known by the name of Ile aux Fouquets, is indeed one of the first islets to be discovered by the Dutch back in 1598. On the way, we will stop at Grande Riviere Sud Est waterfall that we will be able to observe from the boat. The faune and flora is waiting for you; bats and monkeys are in the trees.",
   address:"sf ghk tejytjs",
   longitude:"57.7676",
   latitude:"-20.3991",
   duration:"7 hr",
   image_url:"https://res.cloudinary.com/cruise-paradise/image/upload/v1628156894/cruise/overnight-catamaran-cruises-mauritius_1_dc9mg7.jpg",   
   price: 4500,
   choice:"day",
   category:"sea-cruising"
   }
[sea_cruise_trip1, sea_cruise_trip2, sea_cruise_trip3 ].each do |attributes|
  trip = Trip.create!(attributes)
  puts "Created #{trip.name}"
  end
  puts "Finished creating sea-cruising trips!"
