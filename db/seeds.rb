# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
#
##############################################
## Club
##############################################
# == Schema Information
#
# Table name: clubs
#
#  id                :integer(4)      not null, primary key
#  name              :string(255)
#  headline          :text
#  logo_url          :string(255)
#  mission_statement :text
#  description       :text
#  location          :string(255)
#  phone             :string(255)
#  email             :string(255)
#  url               :string(255)
#  year              :integer(4)
#  legal_notice      :text
#  privacy_notice    :text
#  copyright_notice  :text
#  webmaster_email   :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#
Club.delete_all
Club.create(
  :name => "Peninsula Velo Cycling Club",
  :headline => "A proud member of the Burlingame Chamber of Commerce",
  :logo_url => "pv_logo.png",
  :mission_statement =>
	  %{<p>
		  Support club membership through fun racing and recreational riding
activities to improve performance.
	  </p>},
  :description =>
	  %{<p>
		  Peninsula Velo is a unique mix of racers and recreational riders. Racers
participate on the road, track and trails. Club members travel to century rides
throughout California. PV gives back to the bicycling community by hosting two
of the most popular, longest running races in the area: the San Bruno Hill Climb
and the Burlingame Criterium. PV also gives back to the community where we live
and ride.
	  </p>},
  :location => "San Francisco Bay Area",
  :phone => %{(650) 555-1212},
  :email => %{info@penvelo.org},
  :url => %{http://penvelo.org/},
  :legal_notice => "Legal Notice.",
  :privacy_notice => "Privacy Notice",
  :year => 1974,
  :copyright_notice => %{Copyright © 2010, Peninsula Velo Cycling CLub. All
rights reserved.},
  :webmaster_email => %{webmaster@penvelo.org})

##############################################
## Sponsor
##############################################
# == Schema Information
#
# Table name: sponsors
#
#  id              :integer(4)      not null, primary key
#  name            :string(255)
#  phone           :string(255)
#  email           :string(255)
#  url             :string(255)
#  logo_url        :string(255)
#  contact_name    :string(255)
#  contact_phone   :string(255)
#  contact_email   :string(255)
#  rank            :integer(4)
#  active          :boolean(1)
#  active_since    :date
#  slogan          :text
#  description     :text
#  sponsor_type_id :integer(4)
#  created_at      :datetime
#  updated_at      :datetime
#
Sponsor.delete_all

### Title sponsor

## Pomodoro
Sponsor.create(
  :name => "Pomodoro",
  :logo_url => "pomodoro_logo.png",
	:slogan => %{Home of stylish cooking, from Milan for eternity},
  :description =>
	  %{<p>My casual Italian restaurant is unique. Contemporary setting,
inexpensive, simple menu. Pasta, seafood, panini, salad, and more.</p>
		  <p>I first opened in San Francisco in 1994. Simplicity was the key to
opening others around the Bay Area, southern California, and Phoenix. Each
Pomodoro is unique and fits well in its neighborhood. -Adriano Paganini, Owner &
Chef</p>},
  :phone => "650-555-1212",
  :email => "info@pomodoro.com",
  :url => "http://www.pastapomodoro.com/",
  :contact_name => "contact name",
  :contact_phone => "contact phone",
  :contact_email => "contact email",
  :rank => 1,
  :active => 1,
  :active_since => 1974,
  :sponsor_type_id => 1
)

### Premier sponsors

## Bianchi
Sponsor.create(
  :name => "Bianchi",
  :logo_url => "bianchi_logo.png",
	:slogan => "",
  :description =>
	  %{<p>The history of cycling is the history of Bianchi. The company was founded
in 1885 in Milan, Italy by Edoardo Bianchi. Bianchi has been a driving force in
cycling innovations and competition ever since.</p>
<p>More World Championships, stage races and classics have been won on Bianchi
bicycles than any other brand. The rigorous standards this demands permeates
through all Bianchi bicycles, from racing thoroughbreds to mountain bikes to
city bikes.</p>
  <p>Bianchi bicycles set the standard. Edoardo Bianchi wouldn't have it any
other way!</p>},
  :phone => "555-111-2222",
  :email => "info@bianchiusa.com",
  :url => "http://www.bianchiusa.com/",
  :contact_name => "contact name",
  :contact_phone => "contact phone",
  :contact_email => "contact email",
  :rank => 2,
  :active => 1,
  :active_since => 1974,
  :sponsor_type_id => 2
)

## Edelman
Sponsor.create(
  :name => "Edelman",
  :logo_url => "edelman_logo.png",
	:slogan => "",
  :description =>
	  %{<p>Edelman is the leading independent global PR firm. We service clients,
not Wall Street. No one owns us, so we are free to think. Independently. To
listen, question and evaluate with an open mind unrestrained by conventional
wisdom - and then decide for ourselves.</p>},
  :phone => "555-111-2222",
  :email => "info@edelman.com",
  :url => "http://www.edelman.com/",
  :contact_name => "contact name",
  :contact_phone => "contact phone",
  :contact_email => "contact email",
  :rank => 3,
  :active => 1,
  :active_since => 2009,
  :sponsor_type_id => 2
)

## Summit Bicycles
Sponsor.create(
  :name => "Summit Bicycles",
  :logo_url => "summit_logo.png",
	:slogan => "",
  :description =>
	  %{<p>Summit Bicycles is committed to the highest level of quality and value in service, repair, selection of bicycles and accessories in the San Francisco Bay Area. We do not carry everything – just the best values! </p>},
  :phone => "650-343-8483",
  :email => "info@summitbicycles.com",
  :url => "http://www.summitbicycles.com/",
  :contact_name => "contact name",
  :contact_phone => "contact phone",
  :contact_email => "contact email",
  :rank => 4,
  :active => 1,
  :active_since => 2010,
  :sponsor_type_id => 2
)

### Associate sponsors

## Clif Bar
Sponsor.create(
  :name => "Clif Bar",
  :logo_url => "clif_logo.png",
	:slogan => "",
  :description =>
	  %{<p>Clif Bar and company started on a bike ride. Our founder,Gary, took a bite of
another energy bar and thought to himself: "I could make a better bar than
this."</p>

<p>Today, we still want to make things better. Our food. Our company. Even our
planet.</p>

<p>We'll keep working on it.</p>},
  :phone => "555-111-2323",
  :email => "info@clifbarstore.com",
  :url => "http://www.clifbarstore.com/index.asp",
  :contact_name => "contact name",
  :contact_phone => "contact phone",
  :contact_email => "contact email",
  :rank => 5,
  :active => 1,
  :active_since => 2000,
  :sponsor_type_id => 3
)

## Revolution Wheelworks
Sponsor.create(
  :name => "Revolution Wheelworks",
  :logo_url => "revww_logo.png",
	:slogan => "",
  :description =>
	  %{<p>We set out to make wheels that we wanted to ride. Wheels with the proper
balance of weight, aerodynamics, and durability. Wheels built by hand using
advanced composite materials. Wheels that are fast enough for race day, but
tough enough for group rides. Wheels that can be serviced at any bike shop.
Wheels that won’t break the bank.</p>

  <p>It’s in this spirit that Revolution Wheelworks was born.</p>

  <p>Come join the Revolution!</p>

  <p><a href="http://revolutionwheelworks.blogspot.com/">Revolution Wheelworks
BLOG</a></p>},
  :phone => "555-111-2222",
  :email => "info@revolutionwheels.com",
  :url => "http://www.revolutionwheels.com/",
  :contact_name => "contact name",
  :contact_phone => "contact phone",
  :contact_email => "contact email",
  :rank => 6,
  :active => 1,
  :active_since => 2009,
  :sponsor_type_id => 3
)

## Rudy Project
Sponsor.create(
  :name => "Rudy Project",
  :logo_url => "rudy_logo.png",
	 :slogan => "",
  :description =>
	  %{<p>Rudy Project is worldwide brand leader in hi-tech sunglasses, goggles,
helmets and accessories. Using science, advanced materials, and computer
technology, Rudy Project creates functional, aesthetically superior, and
technologically advanced products. Over the years, Rudy Project has been a
champion of sponsoring and supporting athletes at every level of competition.
And for that, our club is very grateful, having been long sponsored by Rudy
Project. Do look over these very cool products at www.e-rudy.com.</p>},
  :phone => "555-111-1212",
  :email => "info@e-rudy.com",
  :url => "http://www.e-rudy.com",
  :contact_name => "contact name",
  :contact_phone => "contact phone",
  :contact_email => "contact email",
  :rank => 7,
  :active => 1,
  :active_since => 2000,
  :sponsor_type_id => 3
)

## Protech Skin Care
Sponsor.create(
  :name => "Protech Skin Care",
  :logo_url => "protech_logo.png",
	:slogan => "",
  :description =>
	  %{<p>ExtremeCare, Inc. develops and markets facial skin care products under
the brand name Protech Skin Care. ExtremeCare products are formulated to meet
and exceed the needs of outdoor enthusiasts and athletes – who expose their skin
to extended physical exertion and extreme environmental conditions.</p>

	  <p>ExtremeCare was founded in December 1999 and the first product launched
in February 2003. The company is located near San Francisco in Castro Valley,
California.</p>},
  :phone => "650-555-1212",
  :email => "info@protechskincare.com/",
  :url => "http://www.protechskincare.com/",
  :contact_name => "contact name",
  :contact_phone => "contact phone",
  :contact_email => "contact email",
  :rank => 8,
  :active => 1,
  :active_since => 2009,
  :sponsor_type_id => 3
)

## Skaates Plumbing, Inc.
Sponsor.create(
  :name => "Skaates Plumbing, Inc.",
  :logo_url => "skaates_logo.png",
	:slogan => "",
  :description =>
	  %{<p>Skaates Inc. is dedicated to providing quality installations and superior
customer service that reflects a an unwavering commitment to excellence.</p>
<p>Skaates Inc. has distinguished itself for over 20 years as the premier
installer of plumbing and hydronics in the San Francisco bay area. In that time,
we have built a reputation on superior customer service and outstanding trade
knowledge. Our technicians are trained to the most rigorous industry standards
and kept appraised of industry and product innovations. As a full service
plumbing and hydronics contractor we are one of the few providers that can meet
all your plumbing and hydronics requirements.</p>
<p>Skaates Inc. is a licensed California Plumbing Contractor and a member of
the Radiant Panel Association serving the heating and cooling industry.</p>},
  :phone => "650-347-1794",
  :email => "frank@skaates.com",
  :url => "http://www.skaates.com/",
  :contact_name => "Frank Skaates",
  :contact_phone => "650-347-1794",
  :contact_email => "frank@skaates.com",
  :rank => 9,
  :active => 1,
  :active_since => 2000,
  :sponsor_type_id => 3
)

## G2 Engineering
Sponsor.create(
  :name => "G2 Engineering",
  :logo_url => "g2_logo.png",
  :slogan => "",
  :description =>
	  %{<p>G2 offers HVAC designs for new home construction, additions/retrofits,
preparation of plans for submission to local code authorities, code compliance,
energy use reduction and applications for rebates from utility companies.</p>
<p>For PV members, Ken's offering 25% off his hourly rates. Rates based on
type of work.</p>},
  :phone => "650-605-4500",
  :email => "info@g2-engineering.com",
  :url => "http://www.g2-engineering.com/",
  :contact_name => "contact name",
  :contact_phone => "contact phone",
  :contact_email => "contact email",
  :rank => 10,
  :active => 1,
  :active_since => 2000,
  :sponsor_type_id => 3
)

## AdapTx Labs
Sponsor.create(
  :name => "AdapTx Labs",
  :logo_url => "adaptexlabs_logo.png",
	:slogan => "",
  :description =>
	  %{<p><img src="../images/cf_bottle_v4.png" /></p>
	  <p>AdapTx Labs was formed by biotechnology industry veterans with a passion
for athletic performance and MMA. The goal of the company from the outset was to
combine the science of drug development, natural medicine and exercise
physiology to create a legal, yet potent line of supplements specifically for
fighters. To accomplish this, we built a product science team around experts in
the fields of medicine, exercise physiology, marketing and professional
fighting. Peninsula Velo's David Nader is the founder and Chief Scientist of
AdapTx Labs.</p>},
  :phone => "555-111-2222",
  :email => "info@adaptxlabs.com",
  :url => "https://www.adaptxlabs.com/",
  :contact_name => "contact name",
  :contact_phone => "contact phone",
  :contact_email => "contact email",
  :rank => 11,
  :active => 1,
  :active_since => 2009,
  :sponsor_type_id => 3
)

## Equinox
Sponsor.create(
  :name => "Equinox",
  :logo_url => "equinox_logo.png",
	:slogan => "",
  :description =>
	  %{<p>Personal Training is more than a series of one-on-one sessions. At Equinox,
Personal Training is a physical, psychological and emotional experience where
you first increase your level of base conditioning before progressing to
increase physical and cognitive skills.</p>
<p>Special pricing is available to PV members, please contact the Sponsorship
Director for more details.</p>},
  :phone => "866.332.6549",
  :email => "info@equinox.com",
  :url => "http://www.equinox.com/",
  :contact_name => "contact name",
  :contact_phone => "contact phone",
  :contact_email => "contact email",
  :rank => 12,
  :active => 1,
  :active_since => 2009,
  :sponsor_type_id => 3
)

## SRAM
Sponsor.create(
  :name => "SRAM",
  :logo_url => "sram_logo.png",
	:slogan => "",
  :description =>
	  %{<p>Incremental enhancements. Perpetual improvements. Revolutionary Innovation.
When advancements are continuously made to every attribute of every component,
the result is overall performance that is simply second to none. And to real
cycling enthusiasts, there is nothing more gratifying then achieving the
ultimate ride. And the best part is we just keep making it better.</p>
<p>This is what SRAM is all about. Sure, a casual rider will appreciate solid
performance, reliability, dependability and all the standard qualities one would
expect. But it's the riders who live and breathe bicycles who love us most
because bicycles are what we love, too. In fact, they're our only love.</p>
<p>Sram's Grassroots sponsorship has allowed Peninsula Velo to participate in a
special pricing offer on their line of products. Two group buys per year will be
held annually.s</p>},
  :phone => "555-111-1212",
  :email => "info@sram.com",
  :url => "http://www.sram.com/",
  :contact_name => "contact name",
  :contact_phone => "contact phone",
  :contact_email => "contact email",
  :rank => 13,
  :active => 1,
  :active_since => 2000,
  :sponsor_type_id => 3
)

## Showers Pass
Sponsor.create(
  :name => "Showers Pass",
  :logo_url => "showerspass_logo.png",
	:slogan => "",
  :description =>
	  %{<p>The best windproof-waterproof cycling gear anywhere! Designed by cyclists
in the Pacific Northwest where rain, wind and cold is the environment, Showers
Pass cycling gear is technically engineered for racers, commuters, messengers
and everyday cycling enthusiasts. Inspired by challenging rides and weather of
northern California's mountainous Showers Pass Road, we have been making
technical cycling jackets since 1997 combining superior fabrics with optimal
ventilation.</p>},
  :phone => "800-557-5780",
  :email => "info@showerspass.com",
  :url => "http://www.showerspass.com/",
  :contact_name => "contact name",
  :contact_phone => "contact phone",
  :contact_email => "contact email",
  :rank => 14,
  :active => 1,
  :active_since => 2009,
  :sponsor_type_id => 3
)

##############################################
## SponsorDiscount
##############################################
# == Schema Information
#
# Table name: sponsor_discounts
#
#  id         :integer(4)      not null, primary key
#  discount   :text
#  sponsor_id :integer(4)
#  created_at :datetime
#  updated_at :datetime
#
SponsorDiscount.delete_all

### Title sponsor

## Pomodoro
SponsorDiscount.create(
	:discount => "Assorted discounts, watch your Inbox.",
	:sponsor_id => 1
)

### Premier sponsors

## Bianchi
SponsorDiscount.create(
	:discount => "Deep discounts on Bianchi bikes and frames. Contact Bill
Fallis",
	:sponsor_id => 2
)

## Edelman
SponsorDiscount.create(
	:discount => "Coming soon ...",
	:sponsor_id => 3
)

## Summit Bicycles
SponsorDiscount.create(
	:discount => "TBD. Contact Erik Salander for further info.",
	:sponsor_id => 4
)

### Associate sponsors

## Clif Bar
SponsorDiscount.create(
	:discount => "Energy drinks and food for Club events.",
	:sponsor_id => 5
)

## Revolution Wheelworks
SponsorDiscount.create(
	:discount => "Semi-annual group buys at 20% discount. Contact Travis Ma",
	:sponsor_id => 6
)

## Rudy Project
SponsorDiscount.create(
	:discount => "Discount on helmets and eyewear. Contact Travis Ma",
	:sponsor_id => 7
)

## Protech Skin Care
SponsorDiscount.create(
	:discount => "Discount on skincare products. Contact Rob Baesman",
	:sponsor_id => 8
)

## Skaates Plumbing, Inc.
SponsorDiscount.create(
	:discount => "15% discount from full service plumbing company including
capability to film sewer lines. Contact George Skaates",
	:sponsor_id => 9
)

## G2 Engineering
SponsorDiscount.create(
	:discount => "Discount on HVAC services. Contact Ken Gallardo",
	:sponsor_id => 10
)

## AdapTx Labs
SponsorDiscount.create(
	:discount => "Coming soon ...",
	:sponsor_id => 11
)

## Equinox
SponsorDiscount.create(
	:discount => "Various membership discounts. Contact Travis Ma",
	:sponsor_id => 12
)

## SRAM
SponsorDiscount.create(
	:discount => "Grassroots program allows for signifcant savings on drivetrain
and wheel components. Contact Travis Ma",
	:sponsor_id => 13
)

## Showers Pass
SponsorDiscount.create(
	:discount => "Group buys for products. Contact Travis Ma",
	:sponsor_id => 14
)

##############################################
## SponsorType
##############################################
# == Schema Information
#
# Table name: sponsor_types
#
#  id           :integer(4)      not null, primary key
#  sponsor_type :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#
SponsorType.delete_all
SponsorType.create(
  :sponsor_type => 'title')

SponsorType.create(
  :sponsor_type => 'premier')

SponsorType.create(
  :sponsor_type => 'associate')

##############################################
## RideType
##############################################
# == Schema Information
#
# Table name: ride_types
#
#  id         :integer(4)      not null, primary key
#  ride_type  :string(255)
#  created_at :datetime
#  updated_at :datetime
#
RideType.delete_all
RideType.create(
  :ride_type => 'group ride')
RideType.create(
  :ride_type => 'long ride')
RideType.create(
  :ride_type => 'century')
RideType.create(
  :ride_type => 'double century')

##############################################
## Ride
##############################################
# == Schema Information
#
# Table name: rides
#
#  id           :integer(4)      not null, primary key
#  name         :string(255)
#  days         :string(255)
#  time         :time
#  start_point  :string(255)
#  end_point    :string(255)
#  distance     :decimal(5, 2)
#  elevevation  :integer(4)
#  description  :text
#  link_to_pdf  :string(255)
#  link_to_map  :string(255)
#  ride_type_id :integer(4)
#  created_at   :datetime
#  updated_at   :datetime
#
Ride.delete_all
Ride.create(
	:name => %{HMB - Lobitos - 84},
	:start_point => %{Canada & 92},
	:end_point => 'same as start point',
	:days => 'Tuesday, Thursday, Saturday, Sunday',
	:time => 0,
	:description => %{Route:
- 92 West
- Left on Main Street in Half Moon Bay
- Turn left to Higgins Canyon Road.
This is after the Fire station and about 300 feet before getting to Hwy 1
- Follow Higgins Canyon Road until it gets to “Purisima Creek Redwoods
Open Space park”.
- After that the same road becomes Purisima Creek Raod.
- Hard left to Verde Road
- Verde gets close to Hwy 1 go straight on Verde
- Shortly after turn left to Lobitos Creek Road.
o To cut out some of the climbing go straight on Verde and then take
a left on Lobitos Creek Cut Off.
- Turn left on Tunitas Creek Road.
- Turn left to Hwy 1 South
- Turn left on Stage Road
- Turn left to 84 East
- Left on Trip
- Right on Kings Mt.
- Left on Manuella Ave
- Left on Albion Ave
- Right on Olive Hill
- Left on Canada Rd
- Canada Rd North to Start point
Regroups:
Canada 92 – 92 35 – Bakery Half Moon Bay – On the top of the Hills or when
getting back to Hwy 1 – Stop at San Gregorio General Store for Coffee
http://www.sangregoriostore.com/ – 35 and 84 – Corner Trip and 84},
	:distance => 51.0,
	:elevation => 4750,
	:link_to_pdf => %{http://penvelo.org/rides/hmb_lobitos_84.pdf},
	:link_to_map =>
%{http://trail.motionbased.com/trail/invitation/accept.mb?key=MTE1NTY=&senderPk.
pkValue=1065},
	:ride_type_id => 1)

Ride.create(
	:name => %{Kings - Alpine},
	:start_point => %{Canada & 92},
	:end_point => 'same as start point',
	:days => 'Tuesday, Thursday, Saturday, Sunday',
	:time => 0,
	:description => %{Canada/92 to Kings Mtn to West Alpine to Canada/92

Total miles Section mi Description of section
0 5 Start at Canada and Hwy 92, south to Olive Hill
5 2 Right onto Olive Hill to base of Kings Mtn climb (water and
restroom)
7 4 Climb Kings Mtn to Skyline
11 4 Left on Skyline to Sky Londa (water and restroom)
15 6 Descend Hwy 84 to Pescadero Rd, just past La Honda
21 1 Left on Pescadero Rd to West Alpine Rd
22 5 Climb West Alpine Rd to Skyline (restrooms at top)
27 5 Descend Page Mill Rd to Arastradero Rd
32 2 Left on Arastradero Rd to Alpine Rd (restrooms in Open
Space preserve)
34 1 Left on Alpine Rd to Portola Valley Rd (water at corner)
35 3 Right on Portola Valley Rd to Mountain Home Rd
38 2 Right on Mountain Home Rd to Canada Rd
40 7 Straight on Canada Rd to Hwy 92
47 Finish at Canada and Hwy 9},
	:distance => 47.0,
	:elevation => 0,
	:link_to_pdf => %{http://penvelo.org/rides/kings_alpine.pdf},
	:link_to_map => %{TBD},
	:ride_type_id => 1)

Ride.create(
	:name => %{Mt. Eden},
	:start_point => %{Canada & 92},
	:end_point => 'same as start point',
	:days => 'Tuesday, Thursday, Saturday, Sunday',
	:time => 0,
	:description => %{Start at Canada and 92
South to Woodside :20
LH on Woodside Rd to RH on Whiskey Hill
To LH on Sand Hill to RH on Serra to LH at
light to continue south on Serra past
Page Mill Road :50
Continue south on Foothill Expwy, across Page Mill,
To Cupertino.
Cross under Hwy. 280 1:15
Continue on Foothill which becomes Stevens Canyon
Follow past Stevens Creek Dam and continue past
Montebello Road to fork in road with stop sign.
Follow RH fork 100 yds. To LH into
Restrooms 1:35
:10 rest stop
Reverse route to
Cross under hwy 280 2:05
North on Foothill to
Page Mill Road 2:30
North to LH on Sand Hill to RH on whiskey Hill to
Woodside 3:00
To RH on Canada to
Canada and 92 3:20 total time},
	:distance => 32.5,
	:elevation => 0,
	:link_to_pdf => %{http://penvelo.org/rides/mteden.pdf},
	:link_to_map => %{TBD},
	:ride_type_id => 1)

Ride.create(
	:name => %{OLH - San Gregorio - Tunitas},
	:start_point => %{Canada & 92},
	:end_point => 'same as start point',
	:days => 'Tuesday, Thursday, Saturday, Sunday',
	:time => 0,
	:description => %{Route:
- Canada South
- Woodside Rd West
- Right on Kings Mtn.
- Left on Trip Rd
- Left on Portola Road
- Right on Sand Hill
- Right on OLH
- Climb OLH 5.3km
- Down West OLH
- 84 West
- Right on Stage
- Right on Highway 1 North
- Right on Tunitas Creek Rd.
- Down Kings Mountain
- Left on Manuella Ave
- Left on Albion Ave
- Right on Olive Hill
- Left on Canada Rd
- Canada Rd North to Start point
Regroups:
Canada 92 – Woodside Bakery- Bottom of Old La Honda - Top of OLH – OLH 84
– Stop at San Gregorio General Store for Coffee
http://www.sangregoriostore.com/ – End of heavy climbing – 35 Kings - Park at
Kings / Trip},
	:distance => 52.0,
	:elevation => 4750,
	:link_to_pdf => %{http://penvelo.org/rides/olh_sangreg_tunitas.pdf},
	:link_to_map =>
%{http://trail.motionbased.com/trail/invitation/accept.mb?key=MTEwMzU=&senderPk.
pkValue=1065},
	:ride_type_id => 1)

Ride.create(
	:name => %{OLH - W. Alpine},
	:start_point => %{Canada & 92},
	:end_point => 'same as start point',
	:days => 'Tuesday, Thursday, Saturday, Sunday',
	:time => 0,
	:description => %{Route:
- Canada South
- Woodside Rd West
- Right on Kings Mtn.
- Left on Trip Rd
- Left on Portola Road
- Right on Sand Hill
- Right on OLH
- Climb OLH 5.3km
- Down West OLH
- 84 West
- Left on Pescadero Rd
- Left to West Alpine.
- North on 35
- East on 84
- Left on Trip
- Right on Kings Mt.
- Left on Manuella Ave
- Left on Albion Ave
- Right on Olive Hill
- Left on Canada Rd
- Canada Rd North to Start point
Regroups:
Canada 92 – Woodside Bakery- Bottom of Old La Honda - Top of OLH – OLH 84
– 35 and Alpine – 35 and 84 – Corner Trip and 84},
	:distance => 51.0,
	:elevation => 4750,
	:link_to_pdf => %{http://penvelo.org/rides/olh_walpine.pdf},
	:link_to_map =>
%{http://trail.motionbased.com/trail/invitation/accept.mb?key=MTE0ODA=&senderPk.
pkValue=1065},
	:ride_type_id => 1)

Ride.create(
	:name => %{Rancho San Antonio},
	:start_point => %{Canada & 92},
	:end_point => 'same as start point',
	:days => 'Tuesday, Thursday, Saturday, Sunday',
	:time => 0,
	:description => %{Start at Canada and 92
South to Woodside :20
LH on Woodside Rd to RH on Whiskey Hill
To LH on Sand Hill to RH on Serra to LH at
light to continue south on Serra past
Page Mill Road :50
Continue south on Foothill Expwy, across Page Mill,
To Cupertino. Cross under Hwy. 280 RH at next light onto
Cristo Rey Drive. 1:20
Follow Cristo Rey up hill, through roundabout to LH
Into entrance of Rancho San Antonio County Park.
Bear right inside of gate and down hill to the left to
Restrooms 1:30
:10 rest stop
Continue on through gate on paved service road west of restrooms
Up hill and down descent, CAUTION on descent. Exit paved road
Through wooden fence on RH at bottom of hill in middle of LH curve.
Cross wooden bridge and continue east on old paving to fork.
Take RH fork 100 yd. to gate. Through gate to under 280 onto
St. Joseph Av. Continue St. Joseph to RH at 1st stop sign. Pass
Grammar school to LH at stop sign. Continue 2 blks. to LH onto
Foothill Expwy 2:00
Reverse route past
Page Mill 2:20
To LH Sandhill to RH Whiskey Hill to
Woodside 2:50
To RH to Canada north to
Hwy 92},
	:distance => 55.5,
	:elevation => 0,
	:link_to_pdf => %{http://penvelo.org/rides/ranchosanantonio.pdf},
	:link_to_map => %{TBD},
	:ride_type_id => 1)

##############################################
## Content
##############################################
# == Schema Information
#
# Table name: contents
#
#  id              :integer(4)      not null, primary key
#  title           :string(255)
#  entry           :text
#  tags            :string(255)
#  content_type_id :integer(4)
#  created_at      :datetime
#  updated_at      :datetime
#
Content.delete_all

Content.create(
  :title => 'News Headline 1',
  :entry => 'news content 1',
  :tags => 'news',
  :content_type_id => 1)

Content.create(
  :title => 'News Headline 2',
  :entry => 'news content 2',
  :tags => 'news',
  :content_type_id => 1)

Content.create(
  :title => 'News Headline 3',
  :entry => 'news content 3',
  :tags => 'news',
  :content_type_id => 1)

Content.create(
  :title => 'Anouncement Headline 1',
  :entry => 'anouncement content 1',
  :tags => 'announcement',
  :content_type_id => 2)

Content.create(
  :title => 'Meeting Notice Headline 1',
  :entry => 'Club meetings are on the first Moday of each month, 6 p.m. at the Belmont public library',
  :tags => 'club meeting',
  :content_type_id => 3)

Content.create(
  :title => 'Special Event Headline 1',
  :entry => 'club dinner time and date ',
  :tags => 'special event',
  :content_type_id => 4)

##############################################
## ContentType
##############################################
# == Schema Information
#
# Table name: content_types
#
#  id           :integer(4)      not null, primary key
#  content_type :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#
ContentType.delete_all
ContentType.create(
  :content_type => 'news')

ContentType.create(
  :content_type => 'announcement')

ContentType.create(
  :content_type => 'meeting notice')

ContentType.create(
  :content_type => 'special event')

##############################################
## RaceDiscipline
##############################################
# == Schema Information
#
# Table name: race_disciplines
#
#  id              :integer(4)      not null, primary key
#  race_discipline :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#
RaceDiscipline.delete_all
RaceDiscipline.create(
  :race_discipline => 'road')
RaceDiscipline.create(
  :race_discipline => 'criterium')
RaceDiscipline.create(
  :race_discipline => 'track')
RaceDiscipline.create(
  :race_discipline => 'cyclocross')
RaceDiscipline.create(
  :race_discipline => 'mtb')
RaceDiscipline.create(
  :race_discipline => 'hillclimb')
RaceDiscipline.create(
  :race_discipline => 'time trial')
RaceDiscipline.create(
  :race_discipline => 'kids ride')


##############################################
## RaceCategory
##############################################
# == Schema Information
#
# Table name: race_categories
#
#  id            :integer(4)      not null, primary key
#  race_category :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#
RaceCategory.delete_all
RaceCategory.create(
  :race_category => 'pro')
RaceCategory.create(
  :race_category => '1')
RaceCategory.create(
  :race_category => '2')
RaceCategory.create(
  :race_category => '3')
RaceCategory.create(
  :race_category => '4')
RaceCategory.create(
  :race_category => '5')

##############################################
## Role
##############################################
# == Schema Information
#
# Table name: roles
#
#  id         :integer(4)      not null, primary key
#  role       :string(255)
#  created_at :datetime
#  updated_at :datetime
#
Role.delete_all
Role.create(
  :role => 'president')
Role.create(
  :role => 'vice president')
Role.create(
  :role => 'treasurer')
Role.create(
  :role => 'secretary')
Role.create(
  :role => 'board chairman')
Role.create(
  :role => 'board member')
Role.create(
  :role => 'sponsor')
Role.create(
  :role => 'director, uniforms')
Role.create(
  :role => 'director, sponsorship')
Role.create(
  :role => 'director, membership')
Role.create(
  :role => 'director, athletics')
Role.create(
  :role => %{director, women's team})
Role.create(
  :role => 'director, century and recreational rides')
Role.create(
  :role => 'director, race, Burlingame Criterium')
Role.create(
  :role => 'director, race, San Bruno Hill Climb')
Role.create(
  :role => 'webmaster')

##############################################
## ImType
##############################################
# == Schema Information
#
# Table name: im_types
#
#  id         :integer(4)      not null, primary key
#  im_type    :string(255)
#  created_at :datetime
#  updated_at :datetime
#
ImType.delete_all
ImType.create(
  :im_type => 'aim')
ImType.create(
  :im_type => 'icq')
ImType.create(
  :im_type => 'skype')
ImType.create(
  :im_type => %{yahoo! messenger})

##############################################
## Member
##############################################
# == Schema Information
#
# Table name: members
#
#  id                      :integer(4)      not null, primary key
#  first_name              :string(255)
#  last_name               :string(255)
#  middle_initial          :string(255)
#  name                    :string(255)
#  date_of_birth           :date
#  gender                  :string(255)
#  image_url               :string(255)
#  member_since            :date
#  active                  :boolean(1)
#  performance_team_member :boolean(1)
#  usac_license            :string(255)
#  user_name               :string(255)
#  crypted_password        :string(255)
#  password_salt           :string(255)
#  persistence_token       :string(255)
#  profile                 :text
#  created_at              :datetime
#  updated_at              :datetime
#
Member.delete_all
Member.create(
	:first_name	=>	'Erik',
  :last_name	=>	'Salander',
	:middle_initial	=>	'',
	:name => %{Erik Salander},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{esalander},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Erik's profile ...'})

Member.create(
	:first_name	=>	'Robert',
  :last_name	=>	'Baesman',
	:middle_initial	=>	'',
	:name => %{robert Baesman},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{rbaesman},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Rob's profile ...'})

Member.create(
	:first_name	=>	'Pat',
  :last_name	=>	'McNulty',
	:middle_initial	=>	'',
	:name => %{Pat mcNulty},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{pmcnulty},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Pat's profile ...'})

Member.create(
	:first_name	=>	'Dave',
  :last_name	=>	'Nader',
	:middle_initial	=>	'',
	:name => %{Dave Nader},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{dnader},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Dave's profile ...'})

Member.create(
	:first_name	=>	'Kim',
  :last_name	=>	'Perez',
	:middle_initial	=>	'',
	:name => %{Kim Perez},
	:date_of_birth	=> "",
	:gender	=>	'W',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{kperez},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Kim's profile ...'})

Member.create(
	:first_name	=>	'Ray',
  :last_name	=>	'Gildea',
	:middle_initial	=>	'',
	:name => %{Ray gildea},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{rgildea},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Ray's profile ...'})

Member.create(
	:first_name	=>	'Cory',
  :last_name	=>	'Roay',
	:middle_initial	=>	'',
	:name => %{Cory Roay},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{croay},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Cory's profile ...'})

Member.create(
	:first_name	=>	'Andrew',
  :last_name	=>	'Shu',
	:middle_initial	=>	'',
	:name => %{Andrew Shu},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{ashu},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Andrew's profile ...'})

Member.create(
	:first_name	=>	'Ryan',
  :last_name	=>	'Poplawski',
	:middle_initial	=>	'',
	:name => %{Ryan Poplawski},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{rpoplawski},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Ryan's profile ...'})

Member.create(
	:first_name	=>	'Randy',
  :last_name	=>	'Smith',
	:middle_initial	=>	'',
	:name => %{Randy Smith},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{rsmith},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Randy's profile ...'})

Member.create(
	:first_name	=>	'Ted',
  :last_name	=>	'Zayner',
	:middle_initial	=>	'',
	:name => %{Ted Zayner},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{tzayner},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Ted's profile ...'})

Member.create(
	:first_name	=>	'Travis',
  :last_name	=>	'Ma',
	:middle_initial	=>	'',
	:name => %{Travis Ma},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{tma},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Travis' profile ...'})

Member.create(
	:first_name	=>	'Bill',
  :last_name	=>	'Fallis',
	:middle_initial	=>	'',
	:name => %{Bill Fallis},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{bfallis},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Bill's profile ...'})

Member.create(
	:first_name	=>	'Mark',
  :last_name	=>	'Powers',
	:middle_initial	=>	'',
	:name => %{Mark Powers},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{mpowers},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Mark's profile ...'})

Member.create(
	:first_name	=>	'Mark',
  :last_name	=>	'Nutini',
	:middle_initial	=>	'',
	:name => %{Mark Nutini},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{mnutini},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Mark's profile ...'})

Member.create(
	:first_name	=>	'Csaba',
  :last_name	=>	'Nemeth',
	:middle_initial	=>	'',
	:name => %{Csaba Nemeth},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 0,
	:usac_license	=>	%{''},
	:active => 1,
	:member_since	=>	2009,
	:user_name	=>	%{cnemeth},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Csaba's profile ...'})

Member.create(
	:first_name	=>	'Frank',
  :last_name	=>	'Spiteri',
	:middle_initial	=>	'',
	:name => %{Frank Spiteri},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{fspiteri},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Frak's profile ...'})

Member.create(
	:first_name	=>	'Jeromy',
  :last_name	=>	'Cottell',
	:middle_initial	=>	'',
	:name => %{Jeromy Cottell},
	:date_of_birth	=> "",
	:gender	=>	'M',
	:image_url	=>	%{rails.png},
	:performance_team_member => 1,
	:usac_license	=>	%{xyz123},
	:active => 1,
	:member_since	=>	1974,
	:user_name	=>	%{jcottell},
	:crypted_password	=>	%{},
	:password_salt	=>	%{penvelo},
	:profile	=>	%{... Jeromy's profile ...'})


##############################################
## Contact
##############################################
# == Schema Information
#
# Table name: contacts
#
#  id              :integer(4)      not null, primary key
#  street          :string(255)
#  city            :string(255)
#  state           :string(255)
#  zip             :string(255)
#  country         :string(255)
#  primary_phone   :string(255)
#  secondary_phone :string(255)
#  email           :string(255)
#  im              :string(255)
#  member_id       :integer(4)
#  im_type_id      :integer(4)
#  created_at      :datetime
#  updated_at      :datetime
#
Contact.delete_all
Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{esalander@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	1,
	:im_type_id => 3)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{rbaesman@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	2,
	:im_type_id => 3)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{pmcnulty@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	3,
	:im_type_id => 3)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{dnader@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	4,
	:im_type_id => 4)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{kperez@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	5,
	:im_type_id => 3)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{rgildea@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	6,
	:im_type_id => 4)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{croay@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	7,
	:im_type_id => 3)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{ashu@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	8,
	:im_type_id => 3)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{rpoplawski@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	9,
	:im_type_id => 3)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{rsmith@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	10,
	:im_type_id => 3)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{tzayner@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	11,
	:im_type_id => 3)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{tma@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	12,
	:im_type_id => 3)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{bfallis@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	13,
	:im_type_id => 3)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{mpowers@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	14,
	:im_type_id => 1)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{mnutini@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	15,
	:im_type_id => 2)

Contact.create(
	:street	=>	%{1110 Alameda De Las Pulgas},
	:city	=>	'Belmont',
	:state	=>	'CA',
	:zip	=>	'94002',
	:country	=>	'USA',
	:primary_phone	=>	%{(650) 591-8286},
	:secondary_phone	=>	%{(650) 555-1212},
	:email	=>	%{cnemeth@penvelo.org},
	:im	=>	%{im_handle},
	:member_id	=>	16,
	:im_type_id => 3)

##############################################
## Race
##############################################
# == Schema Information
#
# Table name: races
#
#  id                   :integer(4)      not null, primary key
#  name                 :string(255)
#  date                 :date
#  time                 :time
#  organizer            :string(255)
#  location             :string(255)
#  start                :string(255)
#  finish               :string(255)
#  description          :text
#  link_to_website      :string(255)
#  link_to_registration :string(255)
#  race_discipline_id   :integer(4)
#  created_at           :datetime
#  updated_at           :datetime
#
Race.delete_all
Race.create(
  :name => 'San Bruno Hill Climb',
	:date =>  2010-01-01,
  :organizer => 'Pat McNulty, Penninsula Velo Club',
  :location => 'San Bruno, CA',
  :start => "East side of San Bruno Mt. in Brisbane
  at the corner of Guadalupe Canyon Parkway and Bayshore Blvd.",
  :finish => 'Top of the hill',
  :description =>
  %{<p>7-8% up Guadalupe Canyon, right turn into San Bruno Mtn Park, back under
Guadalupe Canyon to Radio Road with narrow switchbacks and grades to 10%. Total
distance is 3.5 miles.</p>},
  :link_to_website =>
%{http://www.sportsbaseonline.com/events/index.xhtml?categoryId=17033},
	:link_to_registration =>
%{http://www.sportsbaseonline.com/events/index.xhtml?categoryId=17033},
  :race_discipline_id => 6)

Race.create(
  :name => 'Fidelity Investments Burlingame Criterium',
	:date => 2010-06-28,
  :organizer => 'Travis Ma, Penninsula Velo Club',
  :location => 'Burlingame, CA',
  :start => 'Lorton & Burlingame Ave.',
  :finish => 'Lorton & Burlingame Ave.',
  :description => %{<p>This is an exciting race through the downtown Burlingame.
You will be challenged! There are multiple levels for different types of rides,
and prizes in each category.</p>

  <p>The race will be held June 28, 2009 in downtown Burlingame, with the train
station as a scenic backdrop. Kids are welcome to participate in the kids
ride.</p>},
  :link_to_website => %{http://www.burlingamecriterium.com/},
	:link_to_registration => %{http://www.burlingamecriterium.com/},
  :race_discipline_id => 2)

Race.create(
  :name => %{Ryan Phua Memorial Kids' Ride (Burlingame)},
	:date => 2010-06-28,
  :organizer => 'Travis Ma, Penninsula Velo Club',
  :location => 'Burlingame, CA',
  :start => 'Lorton & Burlingame Ave.',
  :finish => 'Lorton & Burlingame Ave.',
  :description => %{<p>This year, the Burlingame Criterium’s Kids’ Race is
renamed in memory of Ryan Phua, one of twin sons born to cancer survivor John
Phua and his wife, Michele Phua. This fun and exciting bike ride is a special
event for all kids 12 years old and under.</p>

  <p>The race will be held June 28, 2009 in downtown Burlingame, with the train
station as a scenic backdrop.</p>},
  :link_to_website => %{http://www.ryansride.org/},
  :link_to_registration => %{http://www.ryansride.org/},
  :race_discipline_id => 8)

##############################################
## RaceResult
##############################################
# == Schema Information
#
# Table name: race_results
#
#  id                 :integer(4)      not null, primary key
#  race               :string(255)
#  date               :date
#  placement          :integer(4)
#  field_size         :integer(4)
#  member_id          :integer(4)
#  race_discipline_id :integer(4)
#  race_category_id   :integer(4)
#  created_at         :datetime
#  updated_at         :datetime
#
RaceResult.delete_all
RaceResult.create(
  :race => %{Nevada City Classic - Pro1/2},
  :date => "2010-06-20",
  :placement => 33,
  :field_size => 88,
  :member_id => 17,
  :race_discipline_id => 1,
  :race_category_id => 1)

RaceResult.create(
  :race => %{Patterson Pass RR - E3},
  :date => "2010-08-08",
  :placement => 2,
  :field_size => 45,
  :member_id => 18,
  :race_discipline_id => 1,
  :race_category_id => 4)

RaceResult.create(
  :race => %{Benecia ITT},
  :date => "2010-07-25",
  :placement => 4,
  :field_size => 18,
  :member_id => 14,
  :race_discipline_id => 7,
  :race_category_id => 5)

RaceResult.create(
  :race => %{San Rafael Twilight Criterium (Pro 1/2)},
  :date => "2010-07-11",
  :placement => 8,
  :field_size => 118,
  :member_id => 17,
  :race_discipline_id => 1,
  :race_category_id => 1)

RaceResult.create(
  :race => %{Leesville Gap RR, Cat 3},
  :date => "2010-07-03",
  :placement => 22,
  :field_size => 46,
  :member_id => 18,
  :race_discipline_id => 1,
  :race_category_id => 4)

RaceResult.create(
  :race => %{Leesville Gap RR},
  :date => 2010-07-03,
  :placement => 10,
  :field_size => 55,
  :member_id => 14,
  :race_discipline_id => 1,
  :race_category_id => 5)

RaceResult.create(
  :race => %{Burlingame Criterium (Pro 1/2)},
  :date => "2010-06-27",
  :placement => 12,
  :field_size => 64,
  :member_id => 17,
  :race_discipline_id => 2,
  :race_category_id => 1)

RaceResult.create(
  :race => %{Hellyer Park, Wednesday night},
  :date => "2010-06-23",
  :placement => 2,
  :field_size => 30,
  :member_id => 10,
  :race_discipline_id => 3,
  :race_category_id => 5)

##############################################
## FeedbackType
##############################################
# == Schema Information
#
# Table name: feedback_types
#
#  id            :integer(4)      not null, primary key
#  feedback_type :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#
#
FeedbackType.delete_all
FeedbackType.create(
  :feedback_type => 'comment')
FeedbackType.create(
  :feedback_type => 'bug report')
FeedbackType.create(
  :feedback_type => 'change request')
FeedbackType.create(
  :feedback_type => 'new feature')

##############################################
## Feedback
##############################################
# == Schema Information
#
# Table name: feedbacks
#
#  id               :integer(4)      not null, primary key
#  feedback         :text
#  feedback_type_id :integer(4)
#  created_at       :datetime
#  updated_at       :datetime
#
Feedback.delete_all
Feedback.create(
  :feedback => %{... comment 1 ...},
  :feedback_type_id => 1)

Feedback.create(
  :feedback => %{... bug report 1 ...},
  :feedback_type_id => 2)

Feedback.create(
  :feedback => %{... change request 1 ...},
  :feedback_type_id => 3)

Feedback.create(
  :feedback => %{... new feature 1 ...},
  :feedback_type_id => 4)

##############################################
## End of File
##############################################

