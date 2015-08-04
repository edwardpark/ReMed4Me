class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.string :description
      t.integer :dosage
      t.integer :morning
      t.integer :midday
      t.integer :afternoon
      t.integer :evening
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
