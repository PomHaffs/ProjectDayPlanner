User.destroy_all

u1 = User.create :name => "Tom", :email => "Tom@ga.co", :password => "chicken", :password_confirmation => "chicken", :admin => "true"

u2 = User.create :name => "Other", :email => "Other@ga.co", :password => "chicken", :password_confirmation => "chicken"

Activity.destroy_all

a1 = Activity.create({
:name => "Morning-test",
:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt",
:link => "",
:latitude => "",
:longitude => ""
})
a2 = Activity.create({
:name => "Midday-test",
:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut",
:link => "",
:latitude => "",
:longitude => ""
})
a3 = Activity.create({
:name => "PM-test",
:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.",
:link => "",
:latitude => "",
:longitude => ""
})

City.destroy_all

c1 = City.create ({:name => "Sydney"})

c1.activities << a1 << a2 << a3
