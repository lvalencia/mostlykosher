class Post < ActiveRecord::Base
   def self.latest_facebook_posts
      Post.where({ feed: "facebook" }).order("posted_date desc").limit(1)
   end
  
   def self.latest_news_posts
      Post.where({ feed: "news" }).order("posted_date desc").limit(2)
   end

   def self.latest_twitter_posts
      Post.where({ feed:"twitter"}).order("posted_date desc").limit(2)
   end

   def self.pull_down_posts_from_facebook
      FBGraphAPI.get_connections("111211355657165", "feed")
   end

   def self.pull_down_posts_from_instagram
      id = Instagram.user_search("mostlykosher").first[:id]
      Instagram.user_recent_media(id)
   end

   def self.pull_down_posts_from_twitter
      TwitterAPI.user_timeline("mostlykosher").map do |tweet| 
         { 
               tweet: tweet.full_text, 
            datetime: tweet.created_at
         }
      end 
   end
end
