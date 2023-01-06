class MonthDays < ActiveRecord::Migration[6.1]

  def change
    create_table :month_days do |t|
      t.integer :day
    end
  end

end
