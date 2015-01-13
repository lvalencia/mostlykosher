class ClientController < ApplicationController

   def landing
      @reviews = Review.latest_reviews
      @news_posts = Post.latest_twitter_posts
      @facebook_posts = Post.latest_facebook_posts
      @next_event = Event.next
      @instagram_images = Post.latest_instagram_posts.map { |post| post.image.url(:gallery_preview) }
   end

end
