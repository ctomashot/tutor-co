class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.text :bio
      t.integer :experience
      t.string :subject
      t.integer :location_id

      t.timestamps
    end
  end
end
