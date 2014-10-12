class ClientController < ApplicationController
   def landing
      @reviews = Review.latest_reviews
      @posts = Post.latest_news_posts
   end
end
