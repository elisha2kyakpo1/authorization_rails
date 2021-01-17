class AddUserToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user, :boolean
  end
end
