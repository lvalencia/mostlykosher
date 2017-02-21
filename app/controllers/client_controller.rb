class ClientController < ApplicationController
  def landing
    @reviews = Review.latest_reviews
    @next_event = Event.next
    @images = []
    @is_iphone = request_is_iphone
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

  def request_is_iphone
    user_agent = request.env['HTTP_USER_AGENT'].to_s.downcase
    user_agent.include?('ipod') || user_agent.include?('iphone')
  end
end
