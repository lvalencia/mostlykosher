class AddPublishedToPressEntry < ActiveRecord::Migration
  def change
    add_column :press_entries, :published, :boolean
  end
end
