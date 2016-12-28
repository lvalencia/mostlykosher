class AddOrderingToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :ordering, :integer
  end
end
