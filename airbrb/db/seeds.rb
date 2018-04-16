# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Listing.destroy_all
Review.destroy_all

20.times do 
  User.create(
    email: Faker::Internet.email,
    username: Faker::Internet.user_name,
    password: Faker::Internet.password(6, 12),
    session_token: SecureRandom::urlsafe_base64(16),
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    img_url: Faker::LoremPixel.image('100x100', false, 'people')
    )
  
end

User.create(
  email: 'test@test.com',
  username: 'test123',
  password: 'testtest',
  session_token: SecureRandom::urlsafe_base64(16),
  firstname: Faker::Name.first_name,
  lastname: Faker::Name.last_name,
  img_url: Faker::LoremPixel.image('100x100', false, 'people')
  )

LISTING_RULES = [
  
  "* After your booking is accepted, we will ask your email address to generate a special lock code for you and send it directly to your email. Make sure you get the security lock codes. If you still not get it days before your check-in, please contact us to get them.
  * If you need reserve the parking space, please contact us as early as possible. We will check if that the parking space is reserved by the other guest and send you the (SENSITIVE CONTENTS HIDDEN) reservation fee request.",

  "*The normal check in time: on or after 4:00 pm, check out time: 11:00 am. After the previous guest group check out at 11:00 am, our cleaning lady need a few hours to clean the rooms. We will guarantee the apartment is ready for next guest by 4:00 pm. But we try to be a little bit flexible to accommodate guest's schedule. If you want to check in early or check out late, you need contact management to arrange.",

  "Please no inquiries without photo, profile and contact info verified. We will not respond and automatically decline. Since our space is for one person or a couple, we provide one set of keys. Thank you",

  "I would recommend downloading Yelp and TodayTix for entertainment, and Seamless and GrubHub for ordering food, if you feel lazy exploring an immense amount of restaurant options in the area. But hey, I do have an awesome kitchen with all needed amenities, so feel free to unleash your inner Chef Fantasies"
  ]

LISTINGS = [
  listing0: {
    title: "House in Santorini",
    description: "A massive volcanic eruption around 1650 B.C. forced the
    center of what was then a single island to implode and succumb to the sea.
    Some say that this was the original home of the lost city of Atlantis,
    which long ago disappeared into the ocean's depths. Whatever remains of
    this mythological metropolis is now guarded by beautiful beaches and stately whitewashed homes.
    Today, Santorini consists of two inhabited islands and several islets.
    Most visitors spend their time on Thira (the archipelago's largest island),
    which is home to Santorini's major towns, including Fira and Oia. Sleepy
    Thirassia makes for a relaxing daytrip too. And don't count out the quieter
    islands: Nea Kameni and Palea Kameni are worth exploring.",
    address: "1 Santorini Drive, Greece",
    rules: LISTING_RULES.sample,
    lat: 36.357323,
    lng: 25.356016,
    host_id: 1,
    price: 340,
    beds: 8,
    bedrooms: 6,
    prop_type: "House",
    room_type: "Whole House",
    num_guests: 10,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/73/gettyimages-462922955.jpg",
    wifi: true
  },
  listing1: {
    title: "Paradise in Honolulu - Oahu",
    description: "Oahu blends cosmopolitan luxury and breathtaking scenery
    more than any other Hawaiian island. The state's capital city, Honolulu,
    showcases the island's urban appeal. Nearby you'll find a host of cultural
    and historic sites, from the ornate Iolani Palace to the austere USS Arizona
    Memorial at the World War II Valor in the Pacific National Monument. In the
    nearby Waikiki neighborhood, a skyline of high-rises and resorts contrasts with
    sprawling white sand beaches. For a taste of rural Hawaii, visit the North Shore.
    Here, you'll find the most brilliant blue waters and meandering hikes. But those
    three spots aren't Oahu's only must-see locales. Its top-notch restaurants, vibrant
    cultural events and wild nightlife further showcase this island as a Gathering Place of Hawaiian culture.",
    address: "1342 Water Way, Honolulu",
    rules: LISTING_RULES.sample,
    lat: 21.272199,
    lng: -157.688141,
    host_id: 1,
    price: 192,
    beds: 3,
    bedrooms: 2,
    prop_type: "House",
    room_type: "Whole House",
    num_guests: 5,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/59/diamond_head_state_monument.jpg",
    wifi: true
  },
  listing2: {
    title: "Make the Move to Maui",
    description: "Maui is not nearly as large as the Big Island, nor is it as small as Lanai, as bustling as Oahu or as quiet as Kauai. For many Hawaii vacationers, Maui is just right – offering a taste of just about everything the Aloha State has to offer, from impressive wildlife to intriguing history and culture. While on a visit here, you can shimmy alongside professional hula dancers, golf along coastal fairways, snorkel alongside five different types of sea turtles or simply lounge along some of Hawaii's most notable beaches.One of the archipelago's most popular tourism spots, Maui can be found sandwiched between the Big Island and the much tinier Molokai. Maui is divided into five distinct regions: Many travelers base themselves along the coasts of South Maui (home to the famous Wailea Beach) or West Maui, where the sands of Kaanapali Beach and the music from the Old Lahaina Luau are located. But the rest of the island should not be missed. Travel along the Road to Hana to experience East Maui's scenic coastline, explore Haleakala – the world's largest dormant volcano – in the Upcountry and explore the former tribal battlegrounds of Central Maui's Iao Valley State Park.",
    address: "3902 Copper Drive, Maui",
    rules: LISTING_RULES.sample,
    lat: 20.916599,
    lng: -156.491318,
    host_id: 1,
    price: 235,
    beds: 2,
    bedrooms: 1,
    prop_type: "Cabin",
    room_type: "Single listing",
    num_guests: 3,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/61/w1_getty_averyphotography.jpg",
    wifi: true
  },
  listing3: {
    title: "Beaches, Volcanoes, Pagodas: Bali",
    description: "Shangri-La, Elysium, Arcadia, Utopia and Bali are all synonymous with heaven.The only difference between them is that you can actually visit Bali. Many travelers have never been to this Indonesian island. Yet, the word Bali conjures daydreams of the most fantastical landscape: towering volcanoes wrapped in a deep green canopy, sandy shores that fade into turquoise waters and curving coastlines crowned with staggered pagodas. And believe it or not, Bali rarely disappoints. You'll be amazed at how many different types of visitors revel in this paradise. The ordinary traveler simply stays at the palatial oceanfront resort and indulges in luxurious spa treatments, decadent cuisine and lazy sunbathing. But the historian will find his or her delights at the island's many temples while the adventurer will discover new paths up an active volcano in Kintamani. Plus, the town of Kuta boasts more riotous pleasures for those inclined to late nights. Bali is a dream come true, so wake up and book your ticket.",
    address: "21 Volcano Way, Bali",
    rules: LISTING_RULES.sample,
    lat: -8.326794,
    lng: 115.621490,
    host_id: 1,
    price: 62,
    beds: 4,
    bedrooms: 2,
    prop_type: "House",
    room_type: "Whole House",
    num_guests: 4,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/279/bali_pura_ulun_danu_bratan_temple_sun_getty_afriandi.jpg",
    wifi: true
  },
  listing4: {
    title: "The best Island, Kauai",
    description: "Honey-dipped sunsets, chocolate-sand beaches, aquamarine skies —
    Kauai has mastered seduction. But the oldest island in the Hawaiian chain doesn't
    have to resort to over-the-top luxury or tourist traps to entice; instead, it appeals to a no-muss, no-fuss type of traveler. You prefer rural to resplendent? Kauai's your island — there are only two major highways, and some regions can only be explored on foot. Resorts are no taller than a coconut tree (literally). Some would say that you need little more than a good pair of hiking boots, an umbrella, and an adventurous spirit to visit. But we should warn you: You might also need a little cash. Kauai has put a premium on its natural beauty and prized hiking trails, and listing rates during the winter can reach $500 a night. To get the most and save the most, consider visiting in fall.",
    address: "41 Chocolate Rd, Kauai",
    rules: LISTING_RULES.sample,
    lat: 22.223740,
    lng: -159.561310,
    host_id: 1,
    price: 58,
    beds: 1,
    bedrooms: 2,
    prop_type: "Lighthouse",
    room_type: "Single listing",
    num_guests: 3,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/60/gettyimages-584212910.jpg",
    wifi: true
  },
  listing5: {
    title: "The biggest and best, The Big Island",
    description: "In Hawaii, the Big Island is like the sometimes awkward older sibling. Forgotten in favor of adorable little brothers and sisters, her attributes are often glossed over. Maui is for fun and families. Oahu attracts surfers, partiers and outdoor adventurers. Kauai is for romance and luxury. And the Big Island is just … big. Majestic is more accurate. Geographically unique, the Big Island boasts everything from black-sand beaches to snow-covered peaks, from hardened lava deserts to steamy and lush rainforests. And it's still growing. The Big Island's trump card — the active, fire-spitting Kilauea volcano — has been increasing the island's land mass since 1983. It's true that if you arrived here hoping for a stereotypical Hawaiian getaway that's full of Tiki, luaus and a honeymoon-esque atmosphere, you've probably missed the mark. But the hiking trails and state parks that are here hold sights that no other Hawaiian island can boast of. And the beaches are colors you've probably never seen.",
    address: "432 Big Windy Rd, Hawaii",
    rules: LISTING_RULES.sample,
    lat: 19.720373,
    lng: -155.054169,
    host_id: 1,
    price: 321,
    beds: 3,
    bedrooms: 4,
    prop_type: "Vacation home",
    room_type: "Entire place",
    num_guests: 12,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/58/puuhonua_park.jpg",
    wifi: true
  },
  listing6: {
    title: "Get Phuket",
    description: "Pure white sands, aquamarine waters and limestone cliffs await travelers who visit Thailand's southwestern island of Phuket. Surrounded by the Andaman Sea and about an hour by plane from Bangkok, this island is a little piece of paradise, which comes with a relatively low price tag for everything from its accommodations to spa treatments and boat tours. But along with its tropical appeal, Phuket beckons to travelers wanting to experience its flavorful cuisine (think: lemongrass, lime leaves, chillies) and its rich culture, heavily influenced by its reigning religion: Buddhism.  And although the island's beaches and tourism operators have bounced back from the 2004 tsunami, which hammered its western coast and tragically claimed thousands of lives, it remembers the past with memorials and a better warning system, should the area once again come under threat. ",
    address: "1113 Sandy Cove Road, Phuket",
    rules: LISTING_RULES.sample,
    lat: 7.760087,
    lng: 98.307724,
    host_id: 1,
    price: 222,
    beds: 1,
    bedrooms: 1,
    prop_type: "Cabin",
    room_type: "Single listing",
    num_guests: 3,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/364/big_buddha_getty.jpg",
    wifi: true
  },
  listing7: {
    title: "Stay on the water and chill out",
    description: "Miles of shoreline, dozens of resorts, French cuisine to die for – Tahiti has all the makings of a honeymoon destination. But beach bums often pass over Tahiti's sands in favor of Bora Bora's ivory shores. Despite its idyllic reputation and accessibility, Tahiti is more of an off-the-beaten-path stop than a romantic getaway. However, that doesn't mean Tahiti deserves to be ignored. Leafy forests sit beside sandy shores, French crêpes are served alongside Tahitian poisson cru (raw fish). If there ever was a place that embodies the beautiful duality of the French Polynesian archipelago, it's Tahiti. Here, the quirky, often chaotic atmosphere of the island's capital, Papeete, rubs elbows with uncorrupted natural beauty. In fact, Tahiti – the largest of French Polynesia's 118 islands – is often referred to as two separate islands despite them being joined by a tiny land bridge. Tahiti Nui is the larger, northern section where Papeete can be found. Tahiti Iti (the smaller half) is less accessible, although many visitors make the trek here for a taste of seclusion. Just note that spending a week on either part of Tahiti will cost you quite a chunk of change. But travelers agree that the warm waters, the lush jungles and the luxurious resorts are worth the splurge.",
    address: "12 Toe To Toe Way, Tahiti",
    rules: LISTING_RULES.sample,
    lat: -17.501216,
    lng: -149.491653,
    host_id: 1,
    price: 142,
    beds: 4,
    bedrooms: 3,
    prop_type: "Villa",
    room_type: "Entire place",
    num_guests: 8,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/288/tahiti_main_getty_samantha_t_photography.jpg",
    wifi: true
  },
  listing8: {
    title: "British is Better",
    description: "The British Virgin Islands, or BVI for short, are some of the most exclusive and least developed islands of the Caribbean, but this only adds to their appeal. The resorts, villas, restaurants and other tourist attractions in this paradise are known to emphasize spare luxury over sprawling expansion, and they attract travelers with deep pockets and a love for sailing and seclusion. Many travelers who visit come by ferry boat from another Caribbean isle, especially as some find opulent exile too hard to enjoy for longer than a day or two. And some say it's better to split your time between here, the nearby U.S. Virgin Islands and Anguilla to the east. Others find more than enough to keep them exclusively anchored by these 60 islands and cays. On Tortola, you'll find mountainous cliffs and chalk white beaches, characterized by changing tides and calm easterly winds. A brief sail away, sleepy Jost Van Dyke offers delicious Caribbean food and drink, one of the region's best New Year's Eve parties, as well as a few outdoor excursions like diving and fishing. On Virgin Gorda, you'll find The Baths, perhaps the most picturesque shore in the British Virgin Islands, and with good reason: It offers unique grottoes amidst gigantic granite boulders (just be mindful of the daytripping crowds). For supreme seclusion, try Anegada; its slow pace, flat terrain and sparkling sand lies almost overlooked in Caribbean Sea.",
    address: "232 Very British Court, British Virgin Islands",
    rules: LISTING_RULES.sample,
    lat: 18.389577,
    lng: -64.712048,
    host_id: 1,
    price: 56,
    beds: 1,
    bedrooms: 1,
    prop_type: "Tipi",
    room_type: "Entire place",
    num_guests: 4,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/74/foxys_flickr_anoldent.jpg",
    wifi: true
  },
  listing9: {
    title: "Hellenic Temple in Corfu",
    description: "Used as the backdrop for epic tales by both Homer and Shakespeare, the island of Corfu, or Kerkyra, continues to attract weary travelers looking to escape from the hustle and bustle of everyday life. The sight of its lush green landscape speckled with wildflowers is enough to melt away any ounce of stress. The scent of olives and citrus carried by the wind from nearby groves is enough to refresh anyone from the inside out. And the feel of the sprawling, pebbly beaches beneath your feet or the view of the cerulean waves of the Ionian Sea is enough to make you feel as though you've found paradise. It's really the beaches that draw so many tourists to Corfu every year. Whether you prefer the more isolated—but easily accessible—shores of the island's southern tip or the expansive, rocky north coast, Corfu is every sun-seeker's dream. However, if you find yourself facing a rainy day, the island is also home to some interesting museums and historical sites. Head over to Corfu Town, the island's main commercial and tourist hub, and explore the winding cobblestone streets of Old Town. Tucked away amongst pastel-colored houses are breathtaking tributes to Corfu's rich history, such as the Old Fortress (Palaio Frourio) and the Church of Agios Spiridon, all of which can be explored on foot.",
    address: "13 Corfu Court, Corfu",
    rules: LISTING_RULES.sample,
    lat: 39.684885,
    lng: 19.841480,
    host_id: 1,
    price: 56,
    beds: 20,
    bedrooms: 20,
    prop_type: "Temple",
    room_type: "Entire place",
    num_guests: 30,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/99/hellenic_temple_corfu.jpg",
    wifi: true
  },
  listing10: {
    title: "Bora Bora, So Good They Named it Twice",
    description: "The small island of Bora Bora (just 6 miles long and more than 2 miles wide) overflows with beauty. Dormant volcanoes rise up at its center and fan out into lush jungle before spilling into an aquamarine lagoon. In fact, author James Michener, who wrote Tales of the South Pacific, called Bora Bora the most beautiful island in the world. The 18th-century British explorer James Cook even coined it as the pearl of the Pacific. The very definition of a tropical getaway, blissful Bora Bora abounds with luxurious resorts, sunny skies, warm waters and friendly locals. And as you might've already guessed, the main industry on this petite island in French Polynesia and its swarm of tiny motu (small surrounding islands) is tourism. To that end, you can snorkel, explore Vaitape (Bora Bora's quaint town), hike Mount Otemanu and more. But there's a catch: Bora Bora is expensive — very expensive. In short, visit Bora Bora for natural beauty, visit for utter relaxation and visit if you have the money.",
    address: "80 Bora Bora Drive, Bora Bora",
    rules: LISTING_RULES.sample,
    lat: -16.488670,
    lng: -151.759558,
    host_id: 1,
    price: 126,
    beds: 9,
    bedrooms: 6,
    prop_type: "Cabin",
    room_type: "Entire place",
    num_guests: 14,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/289/bora_bora_main_image.jpg",
    wifi: true
  },
  listing11: {
    title: "Get Darwininian, Go Galapagos",
    description: "With its untamed terrain and notoriously fearless creatures – from sea lions to seagoing lizards – the isolated isles of the Galápagos lure those looking for exhilarating encounters in the wild. After all, where else can you observe giant tortoises grazing on tall blades of grass, short-feathered penguins waddling along the equator or blue-footed boobies conducting their unique mating ritual without flinching at the flash of your camera? More than 100 years after Charles Darwin visited during his legendary voyage aboard the HMS Beagle, adventurers
    continue to use his footsteps as a guide for their own extraordinary journeys.",
    address: "1 Survival of the Fittest Drive, Galapagos Islands",
    rules: LISTING_RULES.sample,
    lat: -0.705425,
    lng: -90.222473,
    host_id: 1,
    price: 410,
    beds: 2,
    bedrooms: 1,
    prop_type: "Island",
    room_type: "Single listing",
    num_guests: 5,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/320/bartolome_island.jpg",
    wifi: true
  },
  listing12: {
    title: "Lose your worries in Lana'i",
    description: "When billionaires are fighting over something, you know it's special. That's the case with Hawaii's most exclusive island, Lana'i. Bill Gates, former Microsoft CEO, has been trying to lay his hands on some Lana'i real estate for some time. Larry Ellison, CEO of Oracle, took control of 98 percent of Lana'i in 2012. But don't let this clash of titans stop you from visiting.",
    address: "42 Lana'i Way, Lana'i",
    rules: LISTING_RULES.sample,
    lat: 20.732455,
    lng: -156.964417,
    host_id: 1,
    price: 115,
    beds: 4,
    bedrooms: 4,
    prop_type: "Boat",
    room_type: "Entire place",
    num_guests: 8,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/216/lanai_as_a_daytrip.jpg",
    wifi: true
  },
  listing13: {
    title: "Get away, Guadeloupe",
    description: "There's no doubt Guadeloupe possesses a certain je ne sais quoi—a spark that separates its sun-washed coasts from other Caribbean getaways. Sparkling white- and black-sand beaches extend into calm, cerulean waters, and verdant forests border the imposing La Soufrière volcano. And just a few miles south, quaint villages welcome visitors to centuries-old distilleries and remote sugar plantations. Put simply, Guadeloupe features an unspoiled natural setting with rustic charms. But that's not all this picturesque cluster of islands has to offer. Where else can you savor the sweet aroma of sugar and rum wafting through the air, taste tantalizing French-Creole flavors, and lay your towel down along untouched stretches of sandy bliss?",
    address: "4112 Guadeloupe Way, Guadeloupe",
    rules: LISTING_RULES.sample,
    lat: 16.354506,
    lng: -61.728745,
    host_id: 1,
    price: 15,
    beds: 1,
    bedrooms: 1,
    prop_type: "Yurt",
    room_type: "Single listing",
    num_guests: 2,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/369/gallery_2.jpg",
    wifi: true
  },
  listing14: {
    title: "Stay at St. Lucia",
    description: "Lush, unspoiled St. Lucia has a growing fan base. Some of its vacationers are music lovers, letting loose at the springtime St. Lucia Jazz & Arts Festival (which has previously featured headlining acts like Akon, Ziggy Marley, Diana Ross and the late Amy Winehouse). Others are honeymooners, unwinding on one of the island's chalky beaches or holing up in one of the isolated couples resorts. Still other patrons are adrenaline junkies, testing their limits climbing the Pitons or zip lining through the Chassin region's rain forest. But what if you aren't any of these types? Don't worry: St. Lucia refuses to be pigeonholed as any type of Caribbean vacation. Plus you also don't have to spend a lot of money (its reputation as a luxurious hideout is only somewhat warranted). To discover some of the island's indescribable charms, you'll have to visit for yourself. Start your mornings basking in an orange-tinted Soufrière sunrise then round out your evenings at an evening jump-up (or dance party) along Gros Islet. We'll wait to hear what you think.",
    address: "31 Lucia Drive, St. Lucia",
    rules: LISTING_RULES.sample,
    lat: 13.725482,
    lng: -60.945969,
    host_id: 1,
    price: 221,
    beds: 3,
    bedrooms: 3,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 6,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/233/around_town.jpg",
    wifi: true
  },
  listing15: {
    title: "Relax in the sand at Cozumel",
    description: "Cozumel's clear turquoise waters and powdery sands coax travelers from cold winter climates to this 185-square-mile island off the Yucatán Peninsula. Cruise ships are a constant feature of Cozumel's coastal views, and the atmosphere on this charming island is often interrupted by tourist chatter. In fact, Cozumel's charms are so effective that the shopping plazas along the waterfront stay congested much of the year. But crowds shouldn't deter you from discovering what this tiny Yucatán island has to offer, especially as Cozumel's real allure is far away from the downtown area. You can hire a fishing or diving charter boat to discover the shallow reefs along the coast (this is arguably one of the best diving destinations in the world), take a glass-bottom boat on a tour around the island or simply find a quiet beach where you can relax and do nothing. Once the cruise ships clear out, you should head down to the plaza for some live music and the real skinny on this little island.",
    address: "311 Stone Beach, Cozumel",
    rules: LISTING_RULES.sample,
    lat: 20.544823,
    lng: -86.863403,
    host_id: 1,
    price: 129,
    beds: 5,
    bedrooms: 3,
    prop_type: "Earth house",
    room_type: "Entire place",
    num_guests: 10,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/15/san_gervasio-2016-getty.jpg",
    wifi: true
  },
  listing16: {
    title: "Huge Guesthouse in Crete",
    description: "If there was one word to describe the Greek island of Crete, it would be diverse. Sandy beaches hide among soaring mountains, palm tree forests grow in the middle of sprawling plains, bustling modern cities share coastlines with centuries-old structures. And speaking of cities — in Crete, they reflect the people that came before. The streets are lined with architecture mirroring the styles of the Minoans, the Venetians and the Ottomans, as well as contemporary Greeks. Despite the visible contradictions, this island maintains a sense of unity, felt whenever you step onto the street, dine at a local taverna, or enjoy a glass of raki at a sidewalk café. Crete's experiences are as assorted as its history, so take some time to decide what type of vacation you're looking to have before you set anything in stone. For an urban setting with a variety of restaurants, bars and nightclubs, consider staying along the northern coast in Chania or Heraklion. Those who prefer the great outdoors should head to Rethymnon or Agios Nikolaos for the many beautiful beaches.",
    address: "91 Crete Way, Crete",
    rules: LISTING_RULES.sample,
    lat: 35.409549,
    lng: 24.710999,
    host_id: 1,
    price: 999,
    beds: 10,
    bedrooms: 8,
    prop_type: "Guesthouse",
    room_type: "Entire place",
    num_guests: 25,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/100/154602043.jpg",
    wifi: true
  },
  listing17: {
    title: "Forget everything else, go to Fiji",
    description: "With its turquoise waters, glittering sands, and luxe resorts, Fiji is similar to many other tropical getaways. Likewise, the set of 333 islands caters to lovebirds of all kinds, and we do mean all kinds: 2011's Bachelorette, Ashley even spent some time here with a few eligible beaus. Plus, adventure-seekers, like surfers and divers, appreciate the archipelago's decent waves and coral reefs. But Fiji differs from other sultry destinations in its otherworldliness. Since it's more than 1,300 miles from New Zealand's North Island in the South Pacific Ocean, Fiji affords you the delectable feeling of seclusion. You'll be as far from reality as possible when you're sipping Fiji Bitter Beer and watching the sun dip below the horizon. Fijian customs will make you feel a million miles away too: Ever tasted the dizzying kava drink? Or watched men defy fire and walk across scalding stones without burning their feet? If not, it’s about time you did.",
    address: "591 Fiji Drive, Fiji",
    rules: LISTING_RULES.sample,
    lat: -17.713371,
    lng: 178.065032,
    host_id: 1,
    price: 670,
    beds: 4,
    bedrooms: 4,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 12,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/291/taunovo_bay_resort_spa_perch.jpg",
    wifi: true
  },
  listing18: {
    title: "Cove in Curacao",
    description: "The C in the ABC islands, Curaçao features historic settlements, rugged landscapes and plenty of fun in the sun. Curaçao's main port city, Willemstad, is what an Old World European city would look like if someone dropped it in the Caribbean. The brightly painted Dutch colonial buildings reflect pinks, yellows and blues into the cerulean St. Anna Bay. Once you leave the city, the landscape shifts to a desert scene, with spiny aloe and mesquite sprouting from atop weathered limestone cliffs. But Curaçao's real draw is the beach. Picture-perfect bays and coves flank the island, their turquoise waters lapping gently against powdery white sand. Curaçao's reefs teem with marine life, providing excellent underwater playgrounds for scuba divers and snorkelers. Best of all, the semi-arid island is sheltered from the worst of the Atlantic's hurricane season. Gentle trade winds keep temperatures in the mid-80s, so you can enjoy the outdoors year-round.",
    address: "5191 Curacao Drive, Curacao",
    rules: LISTING_RULES.sample,
    lat: 12.177145,
    lng: -69.016628,
    host_id: 1,
    price: 970,
    beds: 14,
    bedrooms: 14,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 30,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/247/gettyimages-471964913.jpg",
    wifi: true
  },
  listing19: {
    title: "Come relax in the US Virgin Islands",
    description: "The U.S. Virgin Islands are America's Caribbean Paradise — the place to see moko jumbies dance at a Carnival parade, hear the lilting patois of a Creole dialect or smell the spices in a saltfish pate (all without losing cell phone reception). You can visit either St. Thomas, St. John or St. Croix, or better yet, spend a little time on all three islands. That way you'll get plenty of pampering, undisturbed nature and colonial history jammed into one vacation. And bonus: you can pay for everything with U.S. dollars.  Each island offers something different. Called Rock City for its hilly, craggy horizon, St. Thomas is known for luxury — from the mega-yachts moored in the harbor to the high-end storefronts along Main Street. Located a short ferry-ride east, St. John appeals to honeymooners and nature lovers, with more than 7,000 acres of dedicated parkland plus surrounding pristine beaches. Way down south in the Caribbean Sea, less-visited St. Croix has sugar cane plantations and rum distilleries that offer a glimpse into both the past and the present of the Virgin Islands.",
    address: "1777 Red White Blue Drive, US Virgin Islands",
    rules: LISTING_RULES.sample,
    lat: 18.333206,
    lng: -64.920101,
    host_id: 1,
    price: 418,
    beds: 10,
    bedrooms: 5,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 10,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/84/st_thomas_cruise_harbor.jpg",
    wifi: true
  },
  listing21: {
    title: "Puerto Rico Por Favor",
    description: "Determining Puerto Rico's charm is a no-brainer. Less than a three-hour flight from Miami, this island is a U.S. territory (in case you didn't recall from high school history class). So when you're shopping in San Juan, you can pay for your souvenirs with American bills. But don't be mistaken: This isn't quite a home away from home. Puerto Rico has both 20-foot waves for surfers and calm, clear waters for families. It's a stroll back through time (El Morro) and an up-close look at the contemporary (Calle del Cristo). It's an exhilarating mix of landscapes, from the serpentine jungle of El Yunque to the corkscrew caves of Parque de las Cavernas del Río Camuy. And if you want to get away from civilization entirely, you can ferry over to the secluded — not to mention jaw-droppingly gorgeous — islands of Vieques and Culebra. Convinced? If not, we can drive a few further points home. When other Caribbean isles put a premium on wintertime at the beach, Puerto Rico offers year-round affordable packages so travelers can relax along its blanched sands. And while other regional spots like to advertise exciting nightlife, the capital city of San Juan actually delivers. Follow a pulsating beat to the dance clubs in the Santurce neighborhood, catch some live music in a Ponce lounge or grab a casual drink at a San Sebastián bar.",
    address: "84 Sand Way, Puerto Rico",
    rules: LISTING_RULES.sample,
    lat: 18.435726,
    lng: -66.005859,
    host_id: 1,
    price: 90,
    beds: 1,
    bedrooms: 1,
    prop_type: "Apartment",
    room_type: "Single listing",
    num_guests: 2,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/35/skyline_-_sean_pavone_-_shutterstock.jpg",
    wifi: true
  },
  listing22: {
    title: "Go to Trinidad & Tobago",
    description: "The southern Caribbean islands of Trinidad and Tobago are a lesson in contrast. Trinidad, the larger of the two, is bustling with commerce and diversity. A cosmopolitan oasis of Creole culture and the birthplace of the steel drum and the limbo, Trinidad brims with natural resources like gas and oil. Its cultural eclecticism and, in some places, astonishing wealth, is all but unparalleled throughout the Caribbean. And then there's the sleepy island of Tobago. Just northeast, this island is rich in natural wonders and immaculate white-sand beaches, but it lacks the urban-sophisticate personality of its other half. Trinidad has several beaches, but it's Tobago's shores that are more renowned for their variety and beauty. Its pristine beaches line almost every side of the island and they range from crowded to desolate and festive to romantic. Trinidad's main draw is its lush flora and fauna, particularly its scarlet ibises — the blood orange flamingos that call the island's jungles home. But starting in late February, the island does a 180 when it pours on the glitter and turns up the volume for one of the best Carnival parties in all the Caribbean.",
    address: "11 Palm Tree Way, Trinidad & Tobago",
    rules: LISTING_RULES.sample,
    lat: 10.575066,
    lng: -61.029053,
    host_id: 1,
    price: 60,
    beds: 2,
    bedrooms: 2,
    prop_type: "Apartment",
    room_type: "Single listing",
    num_guests: 4,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/55/fort_george_trinidad.jpg",
    wifi: true
  },
  listing23: {
    title: "Martinique Magic",
    description: "Stunning beaches border tropical rainforests and towering cathedrals share skyline with an imposing volcano. Tourists and residents crowd the store-lined streets and restaurant-filled back alleys of Fort-de-France, while a few miles north, foliage dampens the sounds of bird tweets and hikers. In a word: Martinique. If you want to hit the beach one day then get the adrenaline pumping the next, you'll find that this island offers both – and does both well. Of course there's a catch. The fine dining, luxury resorts and impeccable sand don't come cheap. Vacations to the area are notoriously expensive, especially during the winter. And as an overseas region of France, Martinique's currency is the euro, so your U.S. dollars won't go as far. Still, this island has a storied history, a French-tinted cosmopolitan culture and a varied landscape unparalleled anywhere else in the Caribbean, so there's a good chance that your experience here will exceed your vacation budget.",
    address: "404 Martinique Drive, Martinique",
    rules: LISTING_RULES.sample,
    lat: 14.555111,
    lng: -61.051025,
    host_id: 1,
    price: 60,
    beds: 5,
    bedrooms: 3,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 6,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/63/pier.jpg",
    wifi: true
  },
  listing24: {
    title: "Havana Heaven",
    description: "Cuba is full of life, and Havana is its center stage. Come rain or shine, hardship or prosperity, Havana is always beaming with buoyancy. Whether it's the luminous pastel-colored buildings that dot the centuries-old plazas of Old Havana, the fleet of vintage American cars cruising down its streets or the exuberant locals eager to offer you a cafe or dance, Havana's spirit is contagious and untamable. And with diplomatic ties undergoing historic renovations – some of the country's longstanding socialist policies are falling by the wayside – Habaneros are ready to show the world what they're capable of. Modern paladares, or privately owned restaurants, are opening left and right, cruise ships are docking and dilapidated landmarks are being cleaned up. Once pitied as a city stuck in time, Havana is finally on its way to tomorrow.",
    address: "18032 Havana Way, Cuba",
    rules: LISTING_RULES.sample,
    lat: 23.136769,
    lng: -82.407074,
    host_id: 1,
    price: 200,
    beds: 2,
    bedrooms: 2,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 6,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/403/517197127.jpg",
    wifi: true
  },
  listing26: {
    title: "Sunny Grenada",
    description: "It isn't the cost of the airfare or the caliber of the hotel that you'll remember most about your trip to Grenada. It's the kaleidoscope of reds, yellows, and greens that characterize St. George's harbor (arguably the most beautiful in the Caribbean) and how they're reflected in the cerulean water. It's the sound of the waves lapping against Grand Anse's soft sands that echoes in your ears long after the sun goes down. It's the aroma of nutmeg and vanilla that wafts through Market Square and throughout the islands' spice plantations. It's the warm sensation you feel in your stomach and on your tongue after sampling the River Antoine Distillery's 150-proof rum. Grenada isn't just meant to be seen; it's meant to be savored.",
    address: "83 Grenada Way, Grenada",
    rules: LISTING_RULES.sample,
    lat: 12.044798,
    lng: -61.747284,
    host_id: 1,
    price: 480,
    beds: 8,
    bedrooms: 6,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 16,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/234/view_of_the_carenage.jpg",
    wifi: true
  },
  listing27: {
    title: "Come to Cayman",
    description: "The charming Cayman Islands continue to be a coveted Caribbean getaway for both adventurous and more immobile travelers. Gorgeous barrier reefs call to divers as the rum punch calls to the beach bums. Honeymooners hike through the 200-year-old Mastic Trail as parents take their children for interactive swims at Stingray City. Whichever way you choose to mellow out, the Cayman Islands can oblige.",
    address: "31 Cayman Way, Cayman Islands",
    rules: LISTING_RULES.sample,
    lat: 19.346234,
    lng: -81.362000,
    host_id: 1,
    price: 400,
    beds: 6,
    bedrooms: 2,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 9,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/76/seven_mile_beach.jpg",
    wifi: true
  },
  listing28: {
    title: "Amazing Antigua",
    description: "Historic sites, tasty cuisine and a lively cultural scene can all be found on Antigua. But most often it's the beauty and versatility of the island's 365 beaches that draw travelers from afar. Do you like to party in the sand? Are you looking for safe, shallow waters where your kids can play? Would you be interested in exploring the ocean deep? Antigua's got you covered with one beach for every day of the year. Save your breaks from the sand and sun for the go-to sites of Antigua; its sleepy sister island, Barbuda, has a more relaxed, less touristy feel. If you do venture to Antigua's attractions, you'll find that the panoramic view from Shirley Heights or the fascinating history of the Cathedral of St. John the Divine are largely overlooked by the sun worshippers who have set up camp along the shores. That will just make your sightseeing trips all the more pleasant — you'll have fewer people to wrestle with as you uncover some of this island's hidden charm.",
    address: "31 Almond Cove, Antigua",
    rules: LISTING_RULES.sample,
    lat: 17.121812,
    lng: -61.893883,
    host_id: 1,
    price: 590,
    beds: 16,
    bedrooms: 14,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 25,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/69/antigua_main.jpg",
    wifi: true
  },
  listing29: {
    title: "Palm Trees for Days in St. Kitts & Nevis",
    description: "These lesser-known but luxurious twin islands in the southern Caribbean are breathtaking. St. Kitts and Nevis beckon to travelers looking for a mix of resort relaxation and picturesque landscapes with a touch of adventure and a dash of history. St. Kitts is the more outgoing sister, with the widest selection of restaurants, bars and hotels. Shy and lush Nevis showcases the opulence that has become this region's calling card. Seclusion might be the No. 1 draw (Nevis doesn't have a single streetlight), but there are many other lures. Take, for example, the sloping greens of Royal St. Kitts Golf Club. You want culture? These islands have it – just check out the wintertime St. Kitts Carnival or the music festival held every June. And those with a penchant for history will certainly find it – Nevis is the birth island of founding father Alexander Hamilton; St. Kitts' imposing Brimstone Hill Fortress was once known as the Gibraltar of the West Indies and the St. Kitts Scenic Railway educates travelers on the area's sugar cane roots. Meanwhile, those who come strictly for the beach can relax with a good book on a number of white-sand oases, such as Oualie Beach and Frigate Bay.",
    address: "666 Saint Street, St. Kitts & Nevis",
    rules: LISTING_RULES.sample,
    lat: 17.370351,
    lng: -62.736740,
    host_id: 1,
    price: 130,
    beds: 3,
    bedrooms: 2,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 8,
    img_url: "https://travel.usnews.com/static-travel/images/destinations/79/palm_trees_st_kitts_getty_medioimages.jpg",
    wifi: true
  },
  listing30: {
    title: "Get Remote in Kerguelen Islands",
    description: "The Kerguelen Islands are a group of windswept Indian Ocean islands filled with glaciers, mountains, rocky outcrops, and vast plains of tussock grasses and mosses. With a daily mean temperature ranging from 2.1 to 8.2 ⁰C (35.8 to 46.8 ⁰F), the Kerguelen Islands are not the first choice for human settlement, but the islands are a haven for seals, albatrosses, terns, and four species of penguins.",
    address: "3 Somewhere Far Away Drive, Kerguelen Islands",
    rules: LISTING_RULES.sample,
    lat: -49.670905,
    lng: 69.625854,
    host_id: 1,
    price: 1250,
    beds: 5,
    bedrooms: 1,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 8,
    img_url: "https://media1.britannica.com/eb-media/22/123422-004-BBA7700A.jpg",
    wifi: true
  },
  listing31: {
    title: "Spitsbergen Spit-say-yes!",
    description: "The Kerguelen Islands are a group of windswept Indian Ocean islands filled with glaciers, mountains, rocky outcrops, and vast plains of tussock grasses and mosses. With a daily mean temperature ranging from 2.1 to 8.2 ⁰C (35.8 to 46.8 ⁰F), the Kerguelen Islands are not the first choice for human settlement, but the islands are a haven for seals, albatrosses, terns, and four species of penguins.",
    address: "4 Far Away Street, Spitsbergen",
    rules: LISTING_RULES.sample,
    lat: 77.448321,
    lng: 20.901489,
    host_id: 1,
    price: 2250,
    beds: 5,
    bedrooms: 1,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 8,
    img_url: "https://media1.britannica.com/eb-media/57/150657-004-DA93B8A4.jpg",
    wifi: true
  },
  listing32: {
    title: "Easter Island Place!",
    description: "Easter Island, Rapa Nui (“Great Rapa”), and Te Pito te Henua (“Navel of the World”) are names for a small triangular volcanic island in the South Pacific. Located 2,088 km (roughly 1,300 miles) from Pitcairn Island and 3,767 km (2,340 miles) from Santiago, Chile, the government that administers it, Easter Island may be the most-isolated place on the planet. This 163-square-km (63-square-mile) island is famous for its gigantic stone statues—the enigmatic moai—of which there are more than 600, and for the ruins of giant stone platforms (ahus) with open courtyards on their landward sides, some of which show masterly construction.",
    address: "1 Big Head Drive, Easter Island",
    rules: LISTING_RULES.sample,
    lat: -27.133960,
    lng: -109.427261,
    host_id: 1,
    price: 4250,
    beds: 4,
    bedrooms: 2,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 10,
    img_url: "https://img.buzzfeed.com/buzzfeed-static/static/2015-02/16/9/enhanced/webdr06/original-21737-1424098060-21.jpg",
    wifi: true
  },
  listing33: {
    title: "Party on Pitcairn Island",
    description: "This small volcanic island in the South Pacific—the only inhabited island of the British overseas territory of Pitcairn, Henderson, Ducie, and Oeno islands—is probably best known as the haven of the mutineers of the British ship HMS Bounty, who settled there in 1790. Today Pitcairn Island is at the center of one of the world’s largest marine reserves, a vast 830,000-square-km (322,000-square-mile) region of open ocean larger than the U.S. state of Texas.",
    address: "9 Pitty Street, Pitcairn",
    rules: LISTING_RULES.sample,
    lat: -24.419150,
    lng: -128.291473,
    host_id: 1,
    price: 3150,
    beds: 15,
    bedrooms: 4,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 30,
    img_url: "https://img.buzzfeed.com/buzzfeed-static/static/2015-02/16/10/enhanced/webdr09/original-20673-1424098851-17.jpg",
    wifi: true
  },
  listing34: {
    title: "Bear Island / Bjørnøya in Norway!",
    description: "The southernmost island in the Svalbard archipelago, Bear Island is so bleak its highest peak is called Miseryfjellet. It spans 178 sq km but has no full-time residents apart from the handful of people who man its weather station.",
    address: "5 Bjørnøya Way, Norway",
    rules: LISTING_RULES.sample,
    lat: 74.460456,
    lng: 19.264526,
    host_id: 1,
    price: 150,
    beds: 5,
    bedrooms: 5,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 10,
    img_url: "https://img.buzzfeed.com/buzzfeed-static/static/2015-02/16/7/enhanced/webdr02/original-10768-1424089293-4.jpg",
    wifi: true
  },
  listing35: {
    title: "St Kilda, a true archipelago!",
    description: "The most remote part of the British Isles, St Kilda, itself an archipelago, is 60km west of Harris, in the Outer Hebrides, and 160km away from mainland Scotland. It's been uninhabited since it was abandoned by 36 islanders in 1930 after struggles with illness and food shortages, leaving behind eerie empty cottages and streets.",
    address: "5 Remote Way, St Kilda",
    rules: LISTING_RULES.sample,
    lat: 57.810580,
    lng: -8.570881,
    host_id: 1,
    price: 250,
    beds: 5,
    bedrooms: 5,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 10,
    img_url: "https://img.buzzfeed.com/buzzfeed-static/static/2015-02/16/7/enhanced/webdr06/original-19868-1424089964-3.jpg",
    wifi: true
  },
  listing36: {
    title: "Tristan da Cunha, A Remote Getaway",
    description: "Tristan da Cunha's capital is called Edinburgh of the Seven Seas – but the name is the only thing one of the most isolated communities in the world shares with its urbanised, cultured namesake. Lying 2,770km from the Cape of Good Hope, the island contains 29 souls who battle the harsh conditions all year round. But at least there's a UK postcode, TDCU 1ZZ, which means they can order things from Amazon.",
    address: "8 Cunha Way, Tristan da Cunha",
    rules: LISTING_RULES.sample,
    lat: -37.066667,
    lng: -12.316667,
    host_id: 1,
    price: 750,
    beds: 5,
    bedrooms: 5,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 10,
    img_url: "https://img.buzzfeed.com/buzzfeed-static/static/2015-02/16/8/enhanced/webdr09/original-20694-1424094180-4.jpg",
    wifi: true
  },
  listing37: {
    title: "Inaccessible Island, But Not For You!",
    description: "Inaccessible Island is an extinct volcano (last active six million years ago) with Cairn Peak reaching 449 m.[1] The island is 14 km2 (5.4 sq mi) in area, rising out of the South Atlantic Ocean 45 km (28 mi) south-west of Tristan da Cunha. It is part of the archipelago of Tristan da Cunha which is part of the overseas territory of the United Kingdom known as Saint Helena, Ascension and Tristan da Cunha. Along with Gough Island, Inaccessible Island is a protected wildlife reserve and both make up the UNESCO World Heritage Site of Gough and Inaccessible Islands.",
    address: "0 Wrong Way Way, Inaccessible Island",
    rules: LISTING_RULES.sample,
    lat: -37.3,
    lng: -12.68,
    host_id: 1,
    price: 550,
    beds: 5,
    bedrooms: 5,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 12,
    img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/View_of_Nightingale_and_Inaccessible_islands_from_the_deck_of_National_Geographic_Explorer.jpg/2000px-View_of_Nightingale_and_Inaccessible_islands_from_the_deck_of_National_Geographic_Explorer.jpg",
    wifi: true
  },
  listing38: {
    title: "Raoul Island, New Zealand!",
    description: "New Zealand's Department of Conservation sends a manual to the volunteers who go to the island to assist the conservationists there for up to six months a year: It takes a special person to cope with living on an island as remote as Raoul. ...The area is actively volcanic and earthquakes are a regular fact of life. The terrain is very steep and rugged.",
    address: "70 Island Way, Raoul Island",
    rules: LISTING_RULES.sample,
    lat: 29.266667,
    lng: -177.916667,
    host_id: 1,
    price: 650,
    beds: 5,
    bedrooms: 5,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 8,
    img_url: "https://img.buzzfeed.com/buzzfeed-static/static/2015-02/16/10/enhanced/webdr04/original-3024-1424100579-3.jpg",
    wifi: true
  },
  listing39: {
    title: "Takuu, Papua New Guinea!",
    description: "Anthropologist Richard Moyle from the University of Auckland, who studied families on Takuu, a string of islets 200km east of Bougainville, said in 2005 that the atoll community would not sustain human life for much longer due to rising sea levels, meaning that Takuu culture could die out. `Takuu families living elsewhere in Papua New Guinea will take in as many as they can,` he said, `but with no single resettlement location, I can’t see Takuu continuing to function as a community.`",
    address: "81 Takuu Way, Takuu",
    rules: LISTING_RULES.sample,
    lat: -4.75,
    lng: 156.983333,
    host_id: 1,
    price: 369,
    beds: 2,
    bedrooms: 2,
    prop_type: "House",
    room_type: "Entire place",
    num_guests: 6,
    img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/NukutoaHighTide.JPG/700px-NukutoaHighTide.JPG",
    wifi: true
  },
]

REVIEWS = [
  "Unfortunately, we had a bad experience. The bed was hard, the host was unhelpful and kicked us out early.  Needless to say, we won't be coming back. Looking to get a refund at the moment from IslandBnB.",
  "Did not live up to our expectations. We got in late and the host had assumed we weren't coming in.  We were stuck renting another place for the night! Unfortunate, but the rest of our stay was decent enough.",
  "It's a shame... such a beautiful island but we had a bad time. Host charged us for all these incidentals! What's going on? Beware.",
  "Okay... nothing great. Had a good night's sleep but no toilet paper, host was unaccomadating, transporation in and out was extremely difficult.  Make sure this is the trip you want. You will be roughing it.",
  "Perfectly mediocre. Not what I was expecting but neither thrilled nor dissapointed with the trip.  Host could have been nicer and room could have been cleaner. But the island was AMAZING!",
  "I had a great time! Wow, what an amazing place. Unfortunately, the room wasn't ready for us when we got there and we were also forced to leave early on our check out day.  Customer expereince was not there, -2 stars.",
  "Great place with a view!!!  Only complaint (which is a big one for me) is there was no hot water.  Everything else was perfect though. I know it's a tropical place but still need hot water or at least post that there is none.  The host was apologetic.",
  "WOW, WOW, WOW.  What a great place. Couldn't be happier (except for the fact that I was charged a cleaning fee!) I made sure I left everything spotless! Oh well, it wasn't that steep of a charge.  Will be more careful next time.",
  "Truy amazing location, place, and host.  I couldn't be happier with our host and everything he provided for us.  I will definitely be booking again!!",
  "What a unique experience! This place is gorgeous. You can tell that this place is loved. The host was perfect. The dinner was the bomb, an incredible meal, especially the steak!",
]



sample_listings = []

LISTINGS.each do |list|
  list.each do |key, value|
    # debugger
    value[:host_id] = Random.rand(1..20)
    new_listing = Listing.create!(value)
    sample_listings.push(new_listing)
  end
  
  
# 30.times do 
#   Review.create(
#     user_id: User.find(User.pluck(:id).shuffle.first),
#     listing_id: Listing.find(Listing.pluck(:id).shuffle.first),
#     rating: Random.rand(1..5),
#     body: REVIEWS.sample
#     )
# end
  


sample_listings.each do |listing|
  rand_review_amt = Random.rand(1..20)
  rand_review_amt.times do
    Review.create!(
      listing_id: Listing.pluck(:id).shuffle.first,
      user_id: User.pluck(:id).shuffle.first,
      body: REVIEWS.sample,
      rating: Random.rand(1..5)
      )
  end
end
  
end


