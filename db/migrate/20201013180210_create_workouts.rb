class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :workout_type
      t.integer :time
      t.string :level

      t.timestamps
    end
  end
end
