class ClientController < ApplicationController
  def landing
    @reviews = Review.latest_reviews
    @news_posts = Post.latest_twitter_posts
    @facebook_posts = Post.latest_facebook_posts
    @next_event = Event.next
    @images = Post.latests_with_images.map { |post| post.image.url(:gallery_preview) }
    @is_ios = request_is_ios
  end

  def shop
  end

  def shows
    @previous_shows = Event.previous_shows
    @upcoming_shows = Event.upcoming_shows
  end

  def gallery
  end

  def about
  end

  private

  def request_is_ios
    user_agent = request.env['HTTP_USER_AGENT'].to_s.downcase
    (user_agent.include? 'ipod' || user_agent.include?('ipad') || user_agent.include?('iphone'))
  end
end
