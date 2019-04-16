class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone, :string
    add_column :users, :user_role, :string
    add_reference :users, :seller, foreign_key: true
  end
end
