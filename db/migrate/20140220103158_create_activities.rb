class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :minutes
      t.integer :activity_type_id
      t.belongs_to :entry
    end
  end
end
