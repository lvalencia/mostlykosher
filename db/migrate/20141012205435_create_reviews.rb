class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :quote
      t.string :entity

      t.timestamps
    end
  end
end
