class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.int :user_id
      t.int :reservation_id
      t.int :flight_id
      t.int :pos_x
      t.string :pos_y
      t.boolean :availability
      t.string :spare

      t.timestamps
    end
  end
end
