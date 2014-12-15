class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :title
      t.text :description
      t.string :link
      t.string :location

      t.timestamps
    end
  end
end
