class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :grade
      t.integer :location_id
      t

      t.timestamps
    end
  end
end
