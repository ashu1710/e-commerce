class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.string :code
      t.date :valid_from
      t.date :valid_to
      t.integer :min_amt

      t.timestamps
    end
  end
end
