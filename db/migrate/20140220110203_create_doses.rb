class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
      t.decimal :value
      t.integer :insulin_type_id
      t.belongs_to :entry
    end
  end
end
