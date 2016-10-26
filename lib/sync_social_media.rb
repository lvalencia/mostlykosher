class SyncSocialMedia
  def self.start
    #Process Facebook Feed
    facebook_feed = Post.pull_down_posts_from_facebook
    facebook_feed.each do |fb_post|
      begin
        image = URI.parse(FBGraphAPI.get_picture(fb_post["object_id"])) rescue nil
        time = DateTime.parse(fb_post["created_time"])
        Post.create({
                      feed:"facebook",
                      posted_date: time,
                      image: image,
                      title: time.strftime("%b, %d"),
                      content:fb_post["message"]
                    })
      rescue => e
        puts e.inspect
      end
    end
    #Process Twitter Feed
    twitter_feed = Post.pull_down_posts_from_twitter
    twitter_feed.each do |tweet|
      time = tweet[:datetime]
      begin
        Post.create({
                      feed:"twitter",
                      posted_date:time,
                      title:time.strftime("%b, %d"),
                      content:tweet[:tweet]
                    })
      rescue => e
        puts e.inspect
      end
    end
  end
end
