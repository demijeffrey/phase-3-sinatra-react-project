class RemoveDayOfMonthFromBills < ActiveRecord::Migration[6.1]

  def change
    remove_column :bills, :day_of_month, :integer
  end

end
