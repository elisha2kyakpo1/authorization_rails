# frozen_string_literal: true

class AddForeignKeyToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :user_id, :integer
  end
end
