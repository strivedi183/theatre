class AddTicketsTable < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :theater_id
      t.integer :user_id
      t.boolean :is_bought
      t.timestamps
    end
  end
end
