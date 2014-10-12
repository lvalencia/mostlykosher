class AddPostedDateToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :posted_date, :datetime
  end
end
