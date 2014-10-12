class ClientController < ApplicationController
   def landing
      @reviews = Review.latest_reviews
      @news_posts = Post.latest_news_posts
      @facebook_posts = Post.latest_facebook_posts
   end
end
