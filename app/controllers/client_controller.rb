class ClientController < ApplicationController

   def landing
      @reviews = Review.latest_reviews
      @news_posts = Post.latest_twitter_posts
      @facebook_posts = Post.latest_facebook_posts
      @next_event = Event.next
      @instagram_images = Post.latest_instagram_posts.map { |post| post.image.url(:gallery_preview) }
      @band_bio = "An award-winning Jewish culture revival band based in Southern California. As featured by World Music Network, MK repeatedly wins audiences with their upbeat klezmer, plaintive Yiddish melodies, and other Jewish heritage folk genres spun with a modern twist. Their mission is to preserve Jewish musical traditions as well as progressing these genres by fusing them with the sounds of other cultures as well as the contemporary music. Multi-talented clarinetist, pianist, arranger and singer, Leeav Sofer arranges and directs the band joined by Janice “Rachele the  Matchmaker” Mautner Markham on violin and shtick, as well as Casey Solow, Mike King, Will Brahm, Adam Levy, Eric Hagstrom, and Michael Bolger. From their standing-room-only show at the Orange County Yiddish Festival to their exuberant performances at the Skirball Cultural Center, John Anson Ford Theater and Gene Autry Museum, Mostly Kosher band members are honored to grace some of the best stages southern California has to offer! MK is also proud to have joined forces with Craig Taubman and Pico Union Project for the recent “Shabbat at the Ford” and the CD release concert.  They are the 2014 winners of World Music Network's Battle of the Bands and will have an upcoming article feature in Songlines Magazine. They were nominated for Best Song and Audience Choice in the Idyllwild International Festival of Cinema for their independent award-winning music video, as voted by World Music Network, Ikh Hob Dikh Tsufil Lib (I Love You Much Too Much)."
      @is_ios = request_is_ios
   end

private

   def request_is_ios
      user_agent = request.env['HTTP_USER_AGENT'].to_s.downcase
      return (user_agent.include? 'ipod' or user_agent.include? 'ipad' or user_agent.include? 'iphone')
   end

end
