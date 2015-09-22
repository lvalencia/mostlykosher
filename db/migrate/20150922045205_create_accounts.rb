class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :name
      t.string :encrypted_password
      t.string :salt

      t.timestamps
    end
  end
end
