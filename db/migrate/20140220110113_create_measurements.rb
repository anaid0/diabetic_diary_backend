class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.integer :value
      t.integer :measurement_type_id
      t.belongs_to :entry
    end
  end
end
