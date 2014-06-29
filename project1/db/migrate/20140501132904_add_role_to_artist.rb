class AddRoleToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :role, :string
  end
end
