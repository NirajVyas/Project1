class AddShow2ToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :show2, :string
    add_column :artists, :show3, :string
    add_column :artists, :show4, :string
    add_column :artists, :show5, :string
  end
end
