class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :grade
      t.integer :location_id

      t.timestamps
    end
  end
end
