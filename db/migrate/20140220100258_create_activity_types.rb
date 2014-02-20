class CreateActivityTypes < ActiveRecord::Migration
  def change
    create_table :activity_types do |t|
      t.string :name
      t.integer :kcal_per_hour
      t.belongs_to :user
    end
  end
end
