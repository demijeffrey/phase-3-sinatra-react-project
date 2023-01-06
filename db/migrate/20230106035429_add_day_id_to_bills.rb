class AddDayIdToBills < ActiveRecord::Migration[6.1]

  def change
    add_column :bills, :month_day_id, :integer
  end

end
