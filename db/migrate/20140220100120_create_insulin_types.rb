class CreateInsulinTypes < ActiveRecord::Migration
  def change
    create_table :insulin_types do |t|
      t.string :name
      t.string :acting
      t.string :ins_type
      t.belongs_to :user
    end
  end
end
