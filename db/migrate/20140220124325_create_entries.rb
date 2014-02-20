class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.datetime :dt
      t.belongs_to :user
    end
  end
end
