class AddOrderingToPressEntry < ActiveRecord::Migration
  def change
    add_column :press_entries, :ordering, :integer
  end
end
