class AddPinableToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pin, :boolean
  end
end
