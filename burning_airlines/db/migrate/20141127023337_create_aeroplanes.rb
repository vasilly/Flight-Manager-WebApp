class CreateAeroplanes < ActiveRecord::Migration
  def change
    create_table :aeroplanes do |t|
      t.int :cols
      t.int :rows
      t.string :name
      t.string :spare

      t.timestamps
    end
  end
end
