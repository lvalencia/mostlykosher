class Review < ActiveRecord::Base
  def self.latest_reviews
     Review.order(ordering: :asc)
  end
end
