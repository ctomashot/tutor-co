class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :location_id
      t.integer :number

      t.timestamps
    end
  end
end
