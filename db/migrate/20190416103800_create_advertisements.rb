class CreateAdvertisements < ActiveRecord::Migration[5.2]
  def change
    create_table :advertisements do |t|
      t.string :image
      t.date :start_date
      t.date :end_date
      t.boolean :visible_right_side
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
