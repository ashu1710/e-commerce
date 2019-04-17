class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :seller_name, :string
    add_column :users, :address, :string
    add_column :users, :gst_no, :string
    add_column :users, :seller_type, :string
    add_column :users, :delivery_charge, :integer
  end
end
