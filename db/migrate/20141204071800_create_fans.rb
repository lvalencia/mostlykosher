class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.string :email
      t.string :address
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :organization

      t.timestamps
    end
  end
end
