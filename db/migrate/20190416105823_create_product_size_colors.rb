class CreateProductSizeColors < ActiveRecord::Migration[5.2]
  def change
    create_table :product_size_colors do |t|
      t.boolean :available_stock
      t.references :product, foreign_key: true
      t.references :product_color, foreign_key: true
      t.references :product_size, foreign_key: true

      t.timestamps
    end
  end
end
