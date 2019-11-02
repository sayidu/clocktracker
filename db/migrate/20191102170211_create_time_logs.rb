class CreateTimeLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :time_logs do |t|
      t.string :comments,         null: false, default: ""
      t.integer :day
      t.datetime :time_in
      t.datetime :time_out
      t.timestamps null: false
    end

    add_reference :time_logs, :user, foreign_key: true
  end
end
