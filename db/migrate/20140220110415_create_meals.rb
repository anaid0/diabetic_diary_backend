class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :carbs
      t.integer :kcal
      t.belongs_to :entry
    end
  end
end
