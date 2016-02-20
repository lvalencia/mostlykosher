class ClientController < ApplicationController

   def landing
      @reviews = Review.latest_reviews
      @news_posts = Post.latest_twitter_posts
      @facebook_posts = Post.latest_facebook_posts
      @next_event = Event.next
      @instagram_images = Post.latest_instagram_posts.map { |post| post.image.url(:gallery_preview) }
      @is_ios = request_is_ios
   end

   def shop
   end

   def shows
      @previous_shows = Event.previous_shows
      @upcoming_shows = Event.upcoming_shows
   end

private

   def request_is_ios
      user_agent = request.env['HTTP_USER_AGENT'].to_s.downcase
      return (user_agent.include? 'ipod' or user_agent.include? 'ipad' or user_agent.include? 'iphone')
   end

end
