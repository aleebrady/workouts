class CreateTrainers < ActiveRecord::Migration[6.0]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :skills
      t.integer :rating

      t.timestamps
    end
  end
end
