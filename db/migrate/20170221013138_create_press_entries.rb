class CreatePressEntries < ActiveRecord::Migration
  def change
    create_table :press_entries do |t|
      t.attachment :image

      t.timestamps null: false
    end
  end
end
