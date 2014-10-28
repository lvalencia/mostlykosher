# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create({ feed:"twitter", title:"Oct, 24", posted_date:DateTime.parse("Oct 24"), created_at:DateTime.parse("Oct 24"), updated_at:DateTime.parse("Oct 24"), content:"WHAT??? You say there are only EIGHT reserved seating tickets left for the Mostly Kosher CD release party???... http://fb.me/3KR16AUE2" })
Post.create({ feed:"twitter", title:"Oct, 25", posted_date:DateTime.parse("Oct 25"), created_at:DateTime.parse("Oct 25"), updated_at:DateTime.parse("Oct 25"), content:"Our CDs have arrived! Pick yours up on November 1st at Pico Union Project on Nov. 1st!... http://fb.me/27kUCJpbE " })
Post.create({ feed:"facebook", title:"Oct, 25", posted_date:DateTime.parse("Oct 25"), created_at:DateTime.parse("Oct 25"), updated_at:DateTime.parse("Oct 25"), content:"1. Our CDs have arrived! Pick yours up on November 1st at Pico Union Project on Nov. 1st! www.mostlykosherpicounion.eventbrite.com<br />2. There are only 3 MORE TICKETS as of this posting for reserved seating!<br/>3. Have ya seen our music video? https://www.youtube.com/watch?v=tsYZTFfYD6U Feel free to LIKE and SHARE!" })
Review.create({ created_at:DateTime.parse("Aug 2"), updated_at:DateTime.now, posted_date:DateTime.parse("Aug 2"), entity:"Valley Scene Magazine", quote:"<a href=\"http://mostlykosher.com/MK.valleyScene.pdf\">\"MOSTLY KOSHER IS ALL GOOD\"</a>" })
