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
end
