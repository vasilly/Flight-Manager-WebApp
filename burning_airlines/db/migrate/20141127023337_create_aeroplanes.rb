class CreateAeroplanes < ActiveRecord::Migration
  def change
    create_table :aeroplanes do |t|
      t.integer :cols
      t.integer :rows
      t.string :name
      t.string :spare

      t.timestamps
    end
  end
end
