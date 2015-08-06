class Addforeignkeytoreminder < ActiveRecord::Migration
  def change
    add_reference :reminders, :user, index: true, foreign_key: true
  end
end
