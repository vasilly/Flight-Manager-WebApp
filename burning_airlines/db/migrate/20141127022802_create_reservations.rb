class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.int :user_id
      t.int :seat_id
      t.string :spare

      t.timestamps
    end
  end
end
