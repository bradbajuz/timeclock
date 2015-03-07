class CreateTimeData < ActiveRecord::Migration
  def change
    create_table :time_data do |t|
      t.decimal :clock_in
      t.decimal :break
      t.decimal :clock_out
      t.decimal :overtime
      t.decimal :weekly_overtime_total
      t.decimal :yearly_overtime_total
      t.string :note
      t.decimal :weekly_total
      t.decimal :year_to_date_total
      t.decimal :adverage_total
      t.decimal :vacation_total
      t.decimal :vacation_used_total
      t.decimal :vacation_left_total

      t.timestamps null: false
    end
  end
end
