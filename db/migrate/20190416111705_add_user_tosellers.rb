class AddUserTosellers < ActiveRecord::Migration[5.2]
  def change
    add_reference :sellers, :user, index: true
  end
end
