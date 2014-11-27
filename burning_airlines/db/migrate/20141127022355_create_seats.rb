class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :user_id
      t.integer :reservation_id
      t.integer :flight_id
      t.integer :pos_x
      t.string :pos_y
      t.boolean :availability
      t.string :spare

      t.timestamps
    end
  end
end
