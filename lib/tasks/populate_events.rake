desc "Add Events to the DB ; This shouldn't be a permanent solution to a CMS"

task :populate_events => :environment do

   description = """<strong>7620 Foothill Rd, Ventura 93004</strong><br/>
   Showtime:8:00pm <br/>
   Ticket Price: $25 for VIP seating, $15 general seating<br/>
   <a href='http://www.templebethtorah.com/top-calendar#year=2015&month=6&day=1&view=month'>More Info</a>"""

   Event.create({
      date:DateTime.parse("June 6, 2015").to_date,
      title:"Temple Beth Torah",
      description:description,
      location:"7620 Foothill Rd, Ventura 93004",
      link:"http://www.templebethtorah.com/top-calendar#year=2015&month=6&day=1&view=month"
   })

   description = """
   <storng>3635 Elm Avenue, Long Beach, CA 90807</strong><br/>
   Shabbat Oneg<br/>
   Showtime: 12:30pm<br/>
   Ticket Price: <strong>Free</strong>
   """

   Event.create({
      date: DateTime.parse("June 13, 2015").to_date,
      title:"Shabbat Oneg - Temple Beth Shalom",
      description:description,
      location:"3635 Elm Avenue, Long Beach, CA 90807",
      link:""
   })

   Event.create({
      date:DateTime.parse("June 20, 2015").to_date,
      title:"Private Event"
   })

   Event.create({
      date:DateTime.parse("July 11, 2015").to_date,
      title:"Private Event"
   })


   description = """
   <strong>Skirball Cultural Center</strong><br />
   Showtime: 12pm and 2 pm<br />
   Ticket Price: $10 General, $7 Seniors, $5 kids<br />
   <a href='http://www.skirball.org/'>More Info</a>
   """

   Event.create({
      date:DateTime.parse("AUGUST 9, 2015").to_date,
      title:"Family Amphitheater Performances",
      description:description,
      location:"2701 N Sepulveda Blvd Los Angeles, CA 90049",
      link:"http://www.skirball.org/"
   })

   description = """
   <strong>Temple Beth El</strong><br />
   3055 Porter Gulch Rd, Aptos, CA 95003<br />
   Showtime: 8pm<br />
   Ticket Price: TBD<br />
   <a href='https://tbeaptos.org/'>More Info</a>
   """

   Event.create({
      date:DateTime.parse("OCTOBER 22, 2015").to_date,
      title:" Temple Beth El",
      description:description,
      location:"3055 Porter Gulch Rd, Aptos, CA 95003",
      link:"https://tbeaptos.org/"
   })

   description = """
   <strong>Ashkenaz Music & Dance Center</strong><br/>
   1317 San Pablo Ave., Berkeley CA 94702<br/>
   Showtime: 8pm<br />
   Ticket Price: TBD<br />
   <a href='http://www.ashkenaz.com/'>More Info</a>
   """

   Event.create({
      date:DateTime.parse("OCTOBER 24, 2015").to_date,
      title:"Ashkenaz Music & Dance Center",
      description:description,
      location:"1317 San Pablo Ave., Berkeley CA 94702",
      link:"http://www.ashkenaz.com/"
   })


   description = """
   <strong>Saul’s Restaurant & Delicatessen</strong><br/>
   1475 Shattuck Ave, Berkeley, CA 94709m<br/>
   Showtime: 6pm<br/>
   Ticket Price: <strong>EAT!</strong><br/>
   <a href='http://www.saulsdeli.com/'>More Info</a>
   """

   Event.create({
      date:DateTime.parse("OCTOBER 26, 2015").to_date,
      title:"Saul’s Restaurant & Delicatessen",
      description:description,
      location:"1475 Shattuck Ave, Berkeley, CA 94709",
      link:"http://www.saulsdeli.com/"
   })

   Event.create({
      date:DateTime.parse("NOVEMBER 21, 2015").to_date,
      title:"Private Event"
   })

   Event.create({
      date:DateTime.parse("DECEMBER 13, 2015").to_date,
      title:"Hanukah concert!"
   })
end
