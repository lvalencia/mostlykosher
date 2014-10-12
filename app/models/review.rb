class Review < ActiveRecord::Base
  def self.latest_reviews
     Review.order("posted_date desc").limit(2)
  end
end
