class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :body_part
      t.integer :weight
      t.integer :set
      t.integer :rep
      t.date :date
      t.timestamps
      t.references :user
      t.references :comment
    end
  end
end
