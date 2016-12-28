class RemovePostedDateFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :posted_date, :datetime
  end
end
