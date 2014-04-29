class AddShowToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :show, :string
  end
end
