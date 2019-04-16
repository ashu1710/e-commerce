class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address1
      t.string :area
      t.string :city
      t.string :state
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
