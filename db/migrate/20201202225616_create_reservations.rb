class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :date
      t.integer :time
      t.integer :student_id
      t.integer :instructor_id
      t.integer :room_id

      t.timestamps
    end
  end
end
