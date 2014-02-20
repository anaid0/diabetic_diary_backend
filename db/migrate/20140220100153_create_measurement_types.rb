class CreateMeasurementTypes < ActiveRecord::Migration
  def change
    create_table :measurement_types do |t|
      t.string :name
      t.belongs_to :user
    end
  end
end
