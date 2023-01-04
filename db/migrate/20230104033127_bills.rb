class Bills < ActiveRecord::Migration[6.1]

  def change

    create_table :bills do |t|
      t.string :bill_name
      t.integer :amount
      t.integer :day_of_month
    end

  end

end
