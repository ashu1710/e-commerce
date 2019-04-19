class AddColumnToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :product_size_color, foreign_key: true
  end
end
