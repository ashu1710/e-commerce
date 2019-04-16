class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :seller_name
      t.string :address
      t.string :gst_no
      t.string :seller_type
      t.integer :delivery_charge

      t.timestamps
    end
  end
end
