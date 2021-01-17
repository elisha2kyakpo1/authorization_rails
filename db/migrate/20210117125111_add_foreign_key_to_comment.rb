# frozen_string_literal: true

class AddForeignKeyToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :userid, :integer
  end
end
