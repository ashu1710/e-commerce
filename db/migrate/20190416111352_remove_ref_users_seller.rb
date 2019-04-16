class RemoveRefUsersSeller < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:users, :seller, index: true)
  end
end
