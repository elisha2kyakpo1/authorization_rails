# frozen_string_literal: true

class AddForeignKeyToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :user_id, :integer
  end
end
