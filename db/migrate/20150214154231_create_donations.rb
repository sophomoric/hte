class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :user_id
      t.text :description
      t.string :state
      t.timestamps
    end

    add_index :donations, :user_id
    add_index :donations, :state
  end
end
