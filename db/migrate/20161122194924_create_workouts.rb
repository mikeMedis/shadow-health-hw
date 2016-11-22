class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
        t.text :questions
        t.text :answers
        t.text :name
        t.boolean :result
        
      t.timestamps
    end
  end
end
