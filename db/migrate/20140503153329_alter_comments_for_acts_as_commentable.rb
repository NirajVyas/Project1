class CreateComments1 < ActiveRecord::Migration
  def self.up
    add_column :comments, :title, :string, {limit: 50, default: ""}
    add_column :comments, :commentable_type, :string
    add_column :comments, :commentable_id, :integer
    add_column :comments, :user_id, :integer
    add_column :comments, :role, :string, default: "comments"
    remove_column :comments, :artist_id
    remove_column :comments, :song_id

    add_index :comments, :commentable_type
    add_index :comments, :commentable_id
    add_index :comments, :user_id
  end

  def self.down
    remove_index :comments, :column => :user_id
    remove_index :comments, :column => :commentable_id
    remove_index :comments, :column => :commentable_type

    raise ActiveRecord::IrreversibleMigration # You can add back the columns, but you can't add back the data...
    add_column :comments, :song_id
    add_column :comments, :artist_id
    remove_column :comments, :role
    remove_column :comments, :user_id
    remove_column :comments, :commentable_id
    remove_column :comments, :commentable_type
    remove_column :comments, :title
  end
end
