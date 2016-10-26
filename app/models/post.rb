class Post < ActiveRecord::Base
   has_attached_file :image, :styles => { info_card: "330", gallery_preview:"320x214#" }, url: "/uploads/:class/:style_:filename"
   validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

   validates :feed, :posted_date, :title, :content, presence: true
   validate do |post|
      post.unique_content
   end

   def self.latests_with_images
      Post.order(posted_date: :desc).select { |post| post.image.present? }
   end

   def self.latest_facebook_posts
      Post.where({ feed: "facebook" }).order("posted_date desc").limit(10)
   end
  
   def self.latest_news_posts
      Post.where({ feed: "news" }).order("posted_date desc").limit(10)
   end

   def self.latest_twitter_posts
      Post.where({ feed:"twitter" }).order("posted_date desc").limit(10)
   end
 
   def self.latest_instagram_posts
      Post.where({ feed:"instagram" }).order("posted_date desc").limit(10)
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

   def unique_content
      errors.add(:base, "Has Already Been Posted") if Post.exists?({ content:self.content })
   end
end
