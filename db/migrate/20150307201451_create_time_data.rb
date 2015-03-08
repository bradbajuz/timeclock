class CreateTimeData < ActiveRecord::Migration
  def change
    create_table :time_data do |t|
      t.datetime :clock_in
      t.datetime :break_out
      t.datetime :break_in
      t.datetime :clock_out
      t.string :notes
      t.timestamps null: false
    end
  end
end
