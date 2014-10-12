class Post < ActiveRecord::Base
   def self.latests_facebook_posts
      post.where({ feed: "facebook" }).order("post_date desc").limit(2)
   end
  
   def self.latest_news_posts
      Post.where({ feed: "news" }).order("posted_date desc").limit(2)
   end
end
