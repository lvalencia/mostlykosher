class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :feed
      t.string :title
      t.string :content
      t.datetime :posted_date

      t.timestamps
    end
  end
end
