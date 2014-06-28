class RemoveCommentsFromComments < ActiveRecord::Migration
  def up
    remove_column :comments, :comments
  end

  def down
    add_column :comments, :comments, :string
  end
end
