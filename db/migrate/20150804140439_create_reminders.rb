class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :interval
      t.boolean :taken
      t.references :medication, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
