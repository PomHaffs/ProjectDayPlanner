User.destroy_all

u1 = User.create :name => "Tom", :email => "Tom@ga.co", :password => "chicken", :password_confirmation => "chicken", :admin => "true"

u2 = User.create :name => "Other", :email => "Other@ga.co", :password => "chicken", :password_confirmation => "chicken"

Activity.destroy_all

a1 = Activity.create({
:name => "Morning-single-test",
:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt",
:group_size => "single",
:timeframe => "AM",
:link => "",
:latitude => "",
:longitude => ""
})
a2 = Activity.create({
:name => "Midday-single-test",
:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut",
:group_size => "single",
:timeframe => "midday",
:link => "",
:latitude => "",
:longitude => ""
})
a3 = Activity.create({
:name => "PM-single-test",
:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.",
:group_size => "single",
:timeframe => "PM",
:link => "",
:latitude => "",
:longitude => ""
})

a4 = Activity.create({
:name => "Morning-together-test",
:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt",
:group_size => "together",
:timeframe => "AM",
:link => "",
:latitude => "",
:longitude => ""
})
a5 = Activity.create({
:name => "Midday-together-test",
:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut",
:group_size => "together",
:timeframe => "midday",
:link => "",
:latitude => "",
:longitude => ""
})
a6 = Activity.create({
:name => "PM-together-test",
:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.",
:group_size => "together",
:timeframe => "PM",
:link => "",
:latitude => "",
:longitude => ""
})

City.destroy_all

c1 = City.create ({:name => "Sydney"})

c1.activities << a1 << a2 << a3

b0 = Activity.create({
:name => "Rusty RabbitAM",
:description => "An excellent and ever popular coffee shop that is always worth a visit",
:group_size => "single",
:timeframe => "AM",
:budget => "cheap",
:theme => "edible",
:link => "http://therustyrabbit.com.au/",
:latitude => "",
:longitude => ""
})

b1 = Activity.create({
:name => "TigerbakersAM",
:description => "Classic brekkies and bistro-style mains in a colourful, bustling cafe/bar with outdoor seating.",
:group_size => "single",
:timeframe => "AM",
:budget => "reasonable",
:theme => "edible",
:link => "https://www.zomato.com/sydney/tigerbakers-darlinghurst",
:latitude => "",
:longitude => ""
})

b2 = Activity.create({
:name => "BillsAM",
:description => "Bright, busy cafe for baked goods, egg dishes and famed ricotta hotcakes served at communal tables.",
:group_size => "single",
:timeframe => "AM",
:budget => "expensive",
:theme => "edible",
:link => "https://www.zomato.com/sydney/tigerbakers-darlinghurst",
:latitude => "",
:longitude => ""
})

b3 = Activity.create({
:name => "Brighton the CornerMD",
:description => "Brighten your day with crumpets and cauliflower salad at this Petersham café",
:group_size => "single",
:timeframe => "midday",
:budget => "cheap",
:theme => "edible",
:link => "https://www.zomato.com/sydney/brighton-the-corner-petersham",
:latitude => "",
:longitude => ""
})


b4 = Activity.create({
:name => "Axil Coffe CoMD",
:description => "Catch a ferry and prop yourself up at a café with views that rival the prime minister’s",
:link => "http://www.anvilcc.com.au/",
:group_size => "single",
:timeframe => "midday",
:budget => "reasonable",
:theme => "edible"
})

b5 = Activity.create({
:name => "GratiaMD",
:description => "Surry Hills’ very own health-driven, not-for-profit café",
:link => "http://www.gratia.org.au/",
:group_size => "single",
:timeframe => "midday",
:budget => "expensive",
:theme => "edible"
})

b6 = Activity.create({
:name => "Mrs Jones the BakerPM",
:description => "Freshwater is fast becoming a culinary destination... thanks to Mrs Jones",
:link => "http://mrsjonesthebaker.com.au/",
:group_size => "single",
:timeframe => "PM",
:budget => "cheap",
:theme => "edible"
})

b7 = Activity.create({
:name => "Kansas City ShufflePM",
:description => "All other cafes in the Rocks, please exit here – there's a new café in town",
:link => "http://www.kansascityshuffle.net/#cafe",
:group_size => "single",
:timeframe => "PM",
:budget => "reasonable",
:theme => "edible"
})

b8 = Activity.create({
:name => "YellowPM",
:description => "Are vegetables the future of food? Yellow certainly seems to think so",
:link => "http://www.yellowsydney.com.au/",
:group_size => "single",
:timeframe => "PM",
:budget => "expensive",
:theme => "edible"
})
