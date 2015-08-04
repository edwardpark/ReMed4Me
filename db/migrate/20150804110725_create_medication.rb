class CreateMedication < ActiveRecord::Migration
      def change
        create_table :medications do |t|
          t.string :name
          t.string :description
          t.integer :dosage
          t.boolean :morning
          t.boolean :midday
          t.boolean :afternoon
          t.boolean :evening
          t.references :user, index: true, foreign_key: true
        end 
  end
end
