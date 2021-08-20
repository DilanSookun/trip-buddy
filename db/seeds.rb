Booking.destroy_all
Trip.destroy_all

# hiking_trip1 =
# { name:"Le Pouce" , 
#   description:"This mountain is the third highest in Mauritius, peaking at 812m, located in the North West of the island between the Pieter Both and the Signal mountain.From the peak you will have a 360 degree view. The sight of the northern part of the island is splendid, with a beautiful view of the northern small islands of Mauritius - Flat Island, Round Island and Snake Island. It also offers one of the most beautiful views of the capital: Port Louis, as well as Moka and the high grounds of Plain Wilhems. Le Pouce is known as ‘The Thumb’ peak. The first person to climb Le Pouce is accredited as Charles Darwin.",
#   address: ,
#   longitude:"57.5222",
#   latitude:"-20.1950",
#   duration:,
#   image_url:,
#   price: 
#   stop_1:,
#   stop_1_lat:,
#   stop_1_long:,
#   stop_1_img_url:,
#   stop_2:,
#   stop_2_lat:,
#   stop_2_long:,
#   stop_2_img_url:,
#   choice:"day",
#   category:"hiking"
#   }

  hiking_trip2 =
{ name: "Le Morne Brabant", 
  description:"Le Morne Brabant is a peninsula at the extreme southwestern tip of the Indian Ocean island of Mauritius on the western side of the island.",
  address:"Le Morne" ,
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

# hiking_trip4 =
# { name:"The Trois Mamelles" , 
#   description:"This atypical solid mass on the West of the island with three distinct sections is peaking at approximately 500m.Climbing the central peak is done in two parts: initially on the path which goes through the bush while the second part is definitely more exposed.The drops on both sides are rather impressive. Frequently the adrenalin peaks up as you approach the top. The panoramic view is awesome and most rewarding for this challenging climb.Three hours are required to accomplish this outstanding hike.",
#   address: ,
#   longitude:"57.44833",
#   latitude:"-20.31022",
#   duration:,
#   image_url:,
#   price: 
#   stop_1:,
#   stop_1_lat:,
#   stop_1_long:,
#   stop_1_img_url:,
#   stop_2:,
#   stop_2_lat:,
#   stop_2_long:,
#   stop_2_img_url:,
#   choice:"day",
#   category:"hiking"
#   }

#   hiking_trip5 =
# { name:"The Corps de Garde" , 
#   description:"An excursion whose climax peaks at 780m, with an impressive panoramic view of the island as far as the eye can see. The path proceeds through basalt rock, steep enough to make use of your hands, and at other times through the bush.The drops are impressive although remote, which gives character to this excursion.Seen from above, the urban civilization in all its extent presents an overall view of Curepipe, Vacoas, Quatre Bornes, Rose Hill, Beau Bassin and les Pailles. On the other side, towards the West, a green stretch of mountains appears.The most well known are: Trois Mamelles, Rempart, Tourelle de Tamarin, Black River Piton, and further away the mountain of Morne Brabant standing majestically. This is a more adventures trek which will take at least 4 hours to complete.",
#   address: ,
#   longitude:"57.4456",
#   latitude:"-20.2569",
#   duration:,
#   image_url:,
#   price: 
#   stop_1:,
#   stop_1_lat:,
#   stop_1_long:,
#   stop_1_img_url:,
#   stop_2:,
#   stop_2_lat:,
#   stop_2_long:,
#   stop_2_img_url:,
#   choice:"day",
#   category:"hiking"
#   }

  # hiking_trip6 =
  # { name:"The Tourelle de Tamarin" , 
  #   description:"This mountain of 548m offers the best view of the entire western area of Mauritius.This is a private property, the land belongs to the Maingard family. The climb starts at the sea level on the northern slope of the mountain.The path to the top of the mountain is rather steep, except for a few sections which are ideal for a drink break and for taking some beautiful pictures.Nature is completely well preserved. A beautiful variety of indigenous plants grow here. At the end of the climb you will enjoy the exceptional panorama view of the most beautiful lagoon “les Fonds Blancs” and of the Morne Brabant mountain.",
  #   address: ,
  #   longitude:"57.37467",
  #   latitude:"-20.34703",
  #   duration:,
  #   image_url:,
  #   price: 
  #   stop_1:"clear blue sea and white sandy beaches, Blue Bay Marine Park is a must see! There you will find rare corals and fish species in a depth of 5.5 meters.",
  #   stop_1_lat:,
  #   stop_1_long:,
  #   stop_1_img_url:,
  #   stop_2:,
  #   stop_2_lat:,
  #   stop_2_long:,
  #   stop_2_img_url:,
  #   choice:"day",
  #   category:"hiking"
  #   }
  [ hiking_trip2 ,hiking_trip3 ].each do |attributes|
    trip = Trip.create!(attributes)
    puts "Created #{trip.name}"
  end
  puts "Finished creating hiking trips!"

sight_seeing1 = {  
  name:"Notre Dame Auxiliatrice",
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
  address: "Port Louis",
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
  address: "Grand Bassin",
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
sight_seeing4 = {  
  name: "Domaine des Aubineaux",
  description:"You will visit the “Domaine des Aubineaux” and its gardens. Domaine des Aubineaux is a colonial house built in 1872, which has been converted into a museum dedicated to the history of Mauritian Tea. The tour will continue with a visit to Bois Chéri which is the second stop in the Mauritian Tea Route tour. The Bois Chéri is the first and biggest tea producer in Mauritius, operating since 1892.",
  address: "Forest-Side, Curepipe",
  longitude:"57.5319491987",
  latitude:"-20.3279504213",
  duration:"5-7 hours ",
  image_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1629453139/trip%20buddy/sightseeing/domaine_des_aubi_rkkxzl.jpg",
  price: 800,
  stop_1: "Restaurant Le Sapin, Discover one of the finest restaurants in Mauritius.",
  stop_1_lat:"-20.316152646",
  stop_1_long:"57.520254003",
  stop_1_img_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1629453139/trip%20buddy/sightseeing/resto_le_sapin_fntpdd.jpg",
  choice:"day",
  category:"sight-seeing"
}
sight_seeing5 = {  
  name: "Colored earth Chamarel falls",
  description:"The landscape at Chamarel is truly unique, it is the only place in world where you can find a clay earth of 7 colors at one place. Also when visiting the park you get to see a great view of the neighboring falls and of the lush vegetation all around.",
  address: "Chamarel",
  longitude:"57.38389",
  latitude:"-20.4225",
  duration:"6 hours ",
  image_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1629453139/trip%20buddy/sightseeing/chamarel_k3yp8o.jpg",
  price: 500,
  stop_1: "Palais de Barbizon. Situated in Chamarel, steps away from the church, Rico the owner will welcome you with his best moon ever.",
  stop_1_lat:"-20.42513",
  stop_1_long:"57.39064",
  stop_1_img_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1629453139/trip%20buddy/sightseeing/palais_de_barbizon_wqcrwj.jpg",
  choice:"day",
  category:"sight-seeing"
}
sight_seeing6 = {  
  name: "Herigtage Nature Reserve",
  description:"Experience the magic of horse riding on Riambel Beach, famed for its 2.5km stretch of white sand with no hotels or crowds- ideal for a wonderful and intimate riding experience. This beach offers a true taste of paradise, where you will also have the privilege of enjoying breath-taking views of the resplendent tropical sunset over the Mauritian lagoon.",
  address: "Bel Ombre",
  longitude:"57.4406436549769",
  latitude:"-20.50075894870374",
  duration:"8 hours ",
  image_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1629453139/trip%20buddy/sightseeing/heritage_kr6epe.jpg",
  price: 1800,
  stop_1: "Enba Pié. Set beneath an amazing 138-year-old arbre de l’intendance (banyan tree) at the back of our Welcome Centre, Enba Pié stands for something unique. It brings together the local culture, food, history and nature in one place.",
  stop_1_lat:"-20.50012081349804",
  stop_1_long:"57.44002138253928",
  stop_1_img_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1628830444/trip%20buddy/sightseeing/2747428_zNogcnlhgYmczu2LAw25QW9mOaee3yZx6hWrV_fHuZQ_txvxll.jpg",
  choice:"night",
  category:"sight-seeing"
}
sight_seeing7 = {  
  name: "Sunset Horse Riding",
  description:"Wildlife enthusiasts, come experience the wonderful wildlife to spark off your interest in the conservation journey. Embark on an adventure into the mystical night to learn more about animals in the wild at the Heritage Nature Reserve. After the trip, refreshment and snacks will be served around a camp fire.",
  address: "Riambel",
  longitude:"57.48531093963284",
  latitude:"-20.518382059775764",
  duration:"5-8 hours ",
  image_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1629453138/trip%20buddy/sightseeing/_romantic-sunset-horse-riding-on-the-riambel-beach_pmi28o.jpg",
  price: 1200,
  stop_1: "Bus Snack. Along the coast of Bel Ombre lies a vintage local bus. A bus that has been refurbished to become a snack bus. Yes, a snack bus! A quirky little snack that immerses itself beautifully within the surroundings of Bel Ombre.",
  stop_1_lat:"-20.496255416966264", 
  stop_1_long:"57.39704255226602",
  stop_1_img_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1629453139/trip%20buddy/sightseeing/bus_snack_rk7fea.jpg",
  choice:"night",
  category:"sight-seeing"
}
sight_seeing8 = {  
  name: "Domaine de l'Etoile",
  description:"The domain counts English gardens, rivers, and indigenous woods which are rich in hundreds of different varieties of plants and trees, including the most ancient ebony trees of Mauritius and other endemic species as well as cinnamon trees, vetivers, orchids, traveller’s trees, banana trees and more. A large river flows through the Domaine as well as trickling streams and flowing waterfalls.",
  address: "Sebastopol",
  longitude:"57.69023745289435",
  latitude:"-20.314911726282386",
  duration:"3 hours ",
  image_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1629453139/trip%20buddy/sightseeing/domaine_de_letoile_gg5khh.jpg",
  price: 1600,
  stop_1: "Ferney Falaise Rouge Restaurant. Located 2 minutes away from Ferney La Vallée and 15 minutes from Ferney Nature Lodge, Ferney Falaise Rouge restaurant is just off the sea cliff and offers an incredible sea-view facing the Grand-Port bay and Lion Mountain.",
  stop_1_lat:"-20.370538182551925",
  stop_1_long:"57.700384333374345",
  stop_1_img_url:"https://res.cloudinary.com/trip-buddy/image/upload/v1629453141/trip%20buddy/sightseeing/restaurant-falaise-rouge_ad6l81.jpg",
  choice:"night",
  category:"sight-seeing"
}
[sight_seeing1, sight_seeing2, sight_seeing3, sight_seeing4, sight_seeing5, sight_seeing6, sight_seeing7, sight_seeing8 ].each do |attributes|
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
