class CreateGuestLists < ActiveRecord::Migration[6.1]
  def change
    create_table :guest_lists do |t|
      t.integer :guest_id
      t.integer :occasion_id
      t.boolean :plus_one

      t.timestamps
    end
  end
end
