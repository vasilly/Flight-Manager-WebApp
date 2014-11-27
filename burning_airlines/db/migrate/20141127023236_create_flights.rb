class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :plane_id
      t.string :flight_no
      t.string :origin
      t.string :destination
      t.datetime :dep_date
      t.datetime :arr_date
      t.string :spare

      t.timestamps
    end
  end
end
